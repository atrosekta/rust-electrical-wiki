
traverse = 'topdown'

indent = -1

function BulletList (blist)

	local function Foreach (el, func, path)
		indent = indent + 1
		local out = pandoc.Inlines( foldlist( indent, 1 ) )
		for i, item in ipairs( el.content ) do
			local foo = func( item, path )
			out:extend( foo )
		end
		indent = indent - 1
		out:insert( closespan() )
		print ("\nFOREACH::: ",out)
		return out
	end

	local function ParseTocEntry( items, path )
		local item = items[1].content[1]
		local text = pandoc.utils.stringify( item )
		local link = path .. item.target
		if #items == 1 then
			return pandoc.Inlines( linkline( text, link ) )
		else
		return pandoc.Inlines(
			linkline( text, link ),
			Foreach( items[2], ParseTocEntry, path )
		)
		end
	end

	local function ParseBarEntry( item )
		local text = pandoc.utils.stringify( item[1] )
		if item[1].content[1].t == 'Link' then
			local htmlpath = item[1].content[1].target
			local mdpath = 'content/' .. htmlpath:gsub("html","md")
			return pandoc.Inlines (
				foldlink( text, htmlpath ),
				Foreach( FileToc( mdpath ), ParseTocEntry, htmlpath )
			)
		else
		return pandoc.Inlines (
			foldable( text ),
			Foreach( item[2], ParseBarEntry )
		)
		end
	end

	local foo = Foreach( blist, ParseBarEntry )
	print("\nFINAL:", foo )
	return foo
end

-- function BulletList (el)
	-- local foo = Foreach( el, ParseBarEntry )
	-- print("\nFINAL:", foo )
	-- return foo
-- end

function ReadFile ( path )
	local file = assert(io.open(path, "r"), "Cannot open file '" .. path .. "'\n" )
	local str = file:read("*all")
	local doc = pandoc.read( str, 'markdown')
	return doc
end

function FileToc ( path )
	return pandoc.structure.table_of_contents( ReadFile( path ) )
end

-- Foreach = function (el, func, path)
local function Foreach (el, func, path)
	indent = indent + 1
	local out = pandoc.Inlines( foldlist( indent, 1 ) )
	for i, item in ipairs( el.content ) do
		local foo = func( item, path )
		out:extend( foo )
	end
	indent = indent - 1
	out:insert( closespan() )
		print ("\nhiiii, ",out)
	return out
end

local function ParseTocEntry( items, path )
-- function ParseTocEntry( items, path )
-- ParseTocEntry = function ( items, path )
	local item = items[1].content[1]
	local text = pandoc.utils.stringify( item )
	local link = path .. item.target
	if #items == 1 then
		return pandoc.Inlines( linkline( text, link ) )
	end
	return pandoc.Inlines(
		linkline( text, link ),
		Foreach( items[2], ParseTocEntry, path )
	)
		-- ParseToc ( items[2], path )
end

local function ParseBarEntry( item )
-- function ParseBarEntry( item )
-- ParseBarEntry = function ( item )
	local text = pandoc.utils.stringify( item[1] )
	-- print( item[1].content[1], text )
		-- print ("\ndebut:::: ",Foreach( items[2], ParseTocEntry, path ))
	-- if item.content[1].t == 'Link' then
	if item[1].content[1].t == 'Link' then
		local htmlpath = item[1].content[1].target
		local mdpath = 'content/' .. htmlpath:gsub("html","md")
		return pandoc.Inlines (
			foldlink( text, htmlpath ),
			Foreach( FileToc( mdpath ), ParseTocEntry, htmlpath )
		)
			-- ParseToc( FileToc( mdpath ), htmlpath )
	end
	return pandoc.Inlines (
		foldable( text ),
		Foreach( item[2], ParseBarEntry )
	)
		-- ParseConf( item[2] )
end









function ParseToc (el, path)
	print( path )
	indent = indent + 1
	local out = pandoc.Inlines( foldlist( indent, 1 ) )
	for i, items in ipairs(el.content) do
		local item = items[1].content[1]
		local text = pandoc.utils.stringify( item )
		local link = path .. item.target
		if #items == 1 then
			local line = linkline( text, link )
			out:insert(line)
		else
			local line = linkline( text, link )
			local list = ParseToc ( items[2], path )
			out:insert(line)
			out:extend(list)
		end
	end
	indent = indent - 1
	out:insert( closespan() )
	return out
end

function ParseConf (el)
	indent = indent + 1
	-- local out = pandoc.Inlines{}
			-- out:insert( foldlist( indent, 1 ) )
	local out = pandoc.Inlines( foldlist( indent, 1 ) )
	for i, items in ipairs(el.content) do
		local text = pandoc.utils.stringify( items[1] )
		local item = items[1].content[1]
		local path = (item.t == 'Link') and item.target or nil
		if path == nil then
			local line = foldable( text, path )
			out:insert(line)
			local sub = ParseConf( items[2] )
			out:extend(sub)
		else
			local line = foldlink( text, path )
			out:insert(line)
			local mdpath = 'content/' .. path:gsub("html","md")
			local toc = ParseToc( FileToc(mdpath), path )
			out:extend(toc)
		end
	end
	indent = indent - 1
	out:insert( closespan() )
	return out
end

function foldable (text) return pandoc.RawInline('html', [[
<span class="sideline foldable folded unfoldonload" onclick="toggfold(this);">
	<span class="sidetext"> ]] .. text .. [[ </span>
	<span class="sidesign"></span>
</span>
]] ) end

function foldlink (text, url) return pandoc.RawInline('html', [[
	<span class='sideline foldable folded' onclick='toggfold(this);'>
		<a class='sidetext' onclick='preventbubble(event);'
		href=']] .. url .. [['> ]] .. text .. [[ </a>
		<span class='sidesign'></span>
	</span>
]] ) end

function linkline (text, url) return pandoc.RawInline('html', [[
		<a class='sideline' href=']] .. url .. [['>
			<span class='sidetext'> ]] .. text .. [[ </span>
			<span class='sidesign'></span>
		</a>
]] ) end

function foldlist (indentlvl, folded) return pandoc.RawInline('html',
	'  <span class="sidelist indent' .. indentlvl .. ' folded">' )
end

function closespan () return pandoc.RawInline('html', '  </span>' ) end

