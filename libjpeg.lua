-- scaffold geniefile for libjpeg

libjpeg_script = path.getabsolute(path.getdirectory(_SCRIPT))
libjpeg_root = path.join(libjpeg_script, "libjpeg")

libjpeg_includedirs = {
	path.join(libjpeg_script, "config"),
	libjpeg_root,
}

libjpeg_libdirs = {}
libjpeg_links = {}
libjpeg_defines = {}

----
return {
	_add_includedirs = function()
		includedirs { libjpeg_includedirs }
	end,

	_add_defines = function()
		defines { libjpeg_defines }
	end,

	_add_libdirs = function()
		libdirs { libjpeg_libdirs }
	end,

	_add_external_links = function()
		links { libjpeg_links }
	end,

	_add_self_links = function()
		links { "libjpeg" }
	end,

	_create_projects = function()

project "libjpeg"
	kind "StaticLib"
	language "C++"
	flags {}

	includedirs {
		libjpeg_includedirs,
	}

	defines {}

	files {
		path.join(libjpeg_script, "config", "**.h"),
		path.join(libjpeg_root, "**.h"),
		path.join(libjpeg_root, "**.cpp"),
	}

end, -- _create_projects()
}

---
