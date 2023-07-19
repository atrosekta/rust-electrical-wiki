
traverse = 'topdown'

Indent = -1

function BulletList ( elem )
	return Foreach( nil, elem, ParseBarEntry )
end

function Foreach ( out, elem, func, path)
	Indent = Indent + 1
	local list = pandoc.Inlines( foldlist(Indent, 1) )
	if elem.content == nil then return end
	for i, item in ipairs( elem.content ) do
		func( list, item, path )
	end
	Indent = Indent - 1
	list:insert( closespan() )
	if out then out:extend( list ) end
	return list
end

function ParseTocEntry(out, items, path )
	local item = items[1].content[1]
	local text = pandoc.utils.stringify( item )
	local link = path .. item.target
	out:insert( linkline(text, link) )
	if #items ~= 1 then
		Foreach( out, items[2], ParseTocEntry, path )
	end
end

function ParseBarEntry( out, items )
	local item = items[1]
	local text = pandoc.utils.stringify( item )
	if item.content[1].t == 'Link' then
		local htmlpath = item.content[1].target
		local mdpath = 'content/' .. htmlpath:gsub("html","md")
		local toc = GetFileToc( mdpath )
		-- local anchor = toc.content[1][1].content[1].target
		if toc.content == nil then return end
		if toc.content[1][1].content then
			htmlpath = htmlpath .. toc.content[1][1].content[1].target
		end
		out:insert( foldlink(text, htmlpath ) )
		-- out:insert( foldlink(text, htmlpath .. anchor) )
		Foreach( out, toc, ParseTocEntry, htmlpath )
	else
		out:insert( foldable(text) )
		Foreach( out, items[2], ParseBarEntry )
	end
end

function GetFileToc ( path )
	local file = assert( io.open( path, "r" ),
		"Cannot open file '" .. path .. "'\n" )
	local str = file:read("*all")
	local content = pandoc.read( str, 'markdown-yaml_metadata_block')
	return content
	-- return pandoc.structure.table_of_contents( content )
end

function foldable (text) return pandoc.RawInline('html', [[
<span class="sideline foldable folded unfoldonload" onclick="toggfold(this);">
	<span class="sidetext"> ]] .. text .. [[ </span>
	<span class="sidesign"></span>
</span>
]] ) end

function foldlink (text, url) return pandoc.RawInline('html', [[
	<span class='sideline foldable folded' onclick='toggfold(this);'>
		<a class='sidetext' onclick='event.stopPropagation();'
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

