-- Ne3lodei 5.7 loader
local base = "https://raw.githubusercontent.com/android-ne3lodei1/N3LProject3/main/ne3_5_7/"
local n = 4
local buf = table.create(n)
for i = 0, n - 1 do
	local url = base .. "part" .. i .. ".txt"
	local ok, body = pcall(function()
		return game:HttpGet(url)
	end)
	assert(ok and body and #body > 0, "Failed to download part " .. i)
	buf[i + 1] = body
end
local src = table.concat(buf)
local fn, err = loadstring(src)
assert(fn, err)
return fn()
