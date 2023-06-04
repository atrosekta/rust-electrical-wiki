
traverse = 'topdown'

indent = -1

function BulletList (el)
	return ParseConf(el)
end

function ReadFile ( path )
	local file = assert(io.open(path, "r"), "Cannot open file '" .. path .. "'\n" )
	local str = file:read("*all")
	local doc = pandoc.read( str, 'markdown')
	return doc
end

function FileToc ( path )
	return pandoc.structure.table_of_contents( ReadFile( path ) )
end

function ParseToc (el, path)
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
-- <span class="sidelist indent1">

function foldlink (text, url) return pandoc.RawInline('html', [[
	<span class='sideline foldable folded' onclick='toggfold(this);'>
		<a class='sidetext' onclick='preventbubble(event);'
		href=']] .. url .. [['> ]] .. text .. [[ </a>
		<span class='sidesign'></span>
	</span>
]] ) end
	-- <span class='sidelist indent2 folded'>


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

