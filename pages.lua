
function Header (h)
	if h.identifier ~= '' and h.level < 4 then
    h.content:insert(1, pandoc.Link(
      '*', '#' .. h.identifier, '',
      {class = 'anchor-link' } ) )
    return h
  end
end
