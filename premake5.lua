project "ImGui"

	kind "StaticLib"

	language "C++"

    files {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp"
    }
    
    filter "system:windows"

		systemversion "latest"

		cppdialect "C++17"

		staticruntime "On"

		targetdir ("../../../Binaries/Win64/%{prj.name}")

		objdir ("../../../Intermediate/Win64/%{prj.name}")

	filter "system:macosx"

		systemversion "latest"

		cppdialect "C++17"

		staticruntime "On"

		targetdir ("../../../Binaries/Mac/%{prj.name}")

		objdir ("../../../Intermediate/Mac/%{prj.name}")

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
