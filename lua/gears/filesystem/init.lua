--- ### Description
--- Filesystem module for `gears`.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.filesystem.html)
local GFS = {}

--- ### Description
--- Create a directory, including all missing parent directories.
--- ### Parameters
--- @param directory string  The directory.
--- ### Returns
--- @return boolean success, nil | string result Returns true and null if successful, otherwise false and error.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.filesystem.html#make_directories)
GFS.make_directories = function(directory) end

--- ### Description
---  Create all parent directories for a given path.
--- ### Parameters
--- @param path string The path whose parents should be created.
--- ### Returns
--- @return boolean success, nil | string result Returns true and null if successful, otherwise false and error.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.filesystem.html#make_parent_directories)
GFS.make_parent_directories = function(path) end

--- ### Description
--- Check if a file exists, is readable and not a directory.
--- ### Parameters
--- @param filename string The file path.
--- ### Returns
--- @return boolean result Returns true if the file exists and is readable.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.filesystem.html#file_readable)
GFS.file_readable = function(filename) end

--- ### Description
--- Check if a file exists, is executable and not a directory.
--- ### Parameters
--- @param filename string The file path.
--- ### Returns
--- @return boolean result Returns true if the file exists and is executable.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.filesystem.html#file_executable)
GFS.file_executable = function(filename) end

--- ### Description
--- Check if a path exists, is readable and a directory.
--- ### Parameters
--- @param path string The directory path.
--- ### Returns
--- @return boolean result Returns true if the directory exists and is readable.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.filesystem.html#dir_readable)
GFS.dir_readable = function(path) end

--- ### Description
--- Check if a path is a directory.
--- ### Parameters
--- @param path string The directory path.
--- ### Returns
--- @return boolean result Returns true if the directory exists and is readable.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.filesystem.html#is_dir)
GFS.is_dir = function(path) end

--- ### Description
--- Get the path of the configuration folder located in the user's home folder.
--- ### Returns
--- @return string result Returns the configuration folder path with a slash at the end.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.filesystem.html#get_xdg_config_home)
GFS.get_xdg_config_home = function() end

--- ### Description
--- Get the path of the cache folder located in the user's home folder.
--- ### Returns
--- @return string result Returns the cache folder path with a slash at the end.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.filesystem.html#get_xdg_cache_home)
GFS.get_xdg_cache_home = function() end

--- ### Description
--- Get the path of the data folder located in the user's home folder.
--- ### Returns
--- @return string result Returns the data folder path with a slash at the end.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.filesystem.html#get_xdg_data_home)
GFS.get_xdg_data_home = function() end

--- ### Description
--- Get the list of data directories located in the system folder.
--- ### Returns
--- @return string[] result Returns the list of data directories.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.filesystem.html#get_xdg_data_dirs)
GFS.get_xdg_data_dirs = function() end

--- ### Description
--- Get the folder containing the AwesomeWM configuration, this is usually located in `$HOME/.config/awesome`.
--- ### Returns
--- @return string result Returns the folder containing the AwesomeWM configuration.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.filesystem.html#get_configuration_dir)
GFS.get_configuration_dir = function() end

--- ### Description
--- Get the path to a directory that should be used to cache data.
--- ### Returns
--- @return string result The requested path string with a trailing slash.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.filesystem.html#get_cache_dir)
GFS.get_cache_dir = function() end

--- ### Description
--- Get the path to the directory where the themes are installed.
--- ### Returns
--- @return string result The requested path string with a trailing slash.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.filesystem.html#get_themes_dir)
GFS.get_themes_dir = function() end

--- ### Description
--- Get the path to the directory where our icons are installed.
--- ### Returns
--- @return string result The requested path string with a trailing slash.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.filesystem.html#get_awesome_icon_dir)
GFS.get_awesome_icon_dir = function() end

--- ### Description
--- Get the user configuration or cache directory.
--- ### Parameters
--- @param directory GFSUserDirectoryAliases The directory to get (or `config` or `cache`).
--- ### Returns
--- @return string result The string containing the requested path.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.filesystem.html#get_dir)
GFS.get_dir = function(directory) end

--- ### Description
--- Get the name of a random file from a given directory.
--- ### Parameters
--- @param path string The directory to search.
--- @param extensions? string[] Specific extensions to narrow your search. If omitted, all files are considered.
--- @param absolute_path? boolean Return the absolute path instead of the filename.
--- ### Returns
--- @return string | nil result A randomly selected filename from the specified path (with a specified extension if necessary) or null if no suitable file is found. If `absolute_path` is set, a path will be returned instead of a filename.
---
--- [View documents](https://awesomewm.org/apidoc/utility_libraries/gears.filesystem.html#get_random_file_from_dir)
GFS.get_random_file_from_dir = function(path, extensions, absolute_path) end

return GFS
