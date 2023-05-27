-- Habilitar el resaltado de sintaxis
vim.cmd('syntax on')
-- Configurar el numero de espacios para las tabulaciones
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
-- Habilitar el numero de linea
vim.wo.number = true
vim.wo.relativenumber = true
-- Habilitar el cursor en linea actual
vim.wo.cursorline = true
-- Deshabilitar el sonido de la campana
vim.o.belloff = true
-- Habilitar la busqueda incremental
vim.o.incsearch = true
-- Habilitar el resaltado de búsqueda
vim.o.hlsearch = true
-- Deshabilitar la creacion automatica de copias de seguridad
vim.o.backup = false
vim.o.writebackup = false
-- Configurar el tiempo de espera para las secuencias de escape
vim.o.timeoutlen = 500
-- Configurar la cantidad de tiempo que se debe esperar antes de considerar que una tecla es sostenida
vim.o.ttimeoutlen = 10
-- Habilitar el autocompletado para los comandos
vim.o.wildmenu = true
-- Configurar el comportamiento del teclado en el modo de inserción
vim.o.backspace = 'indent,eol,start'
-- Configurar el comportamiento del teclado en el modo de comando
vim.o.showmode = false
vim.o.showcmd = true
-- Configurar el idioma
vim.o.langmenu = 'en_US.UTF-8'
-- Configurar la codificación de caracteres
vim.o.encoding = 'utf-8'
-- Configurar la ruta de búsqueda para los archivos
vim.o.path = '**'
-- Configurar el formato de los archivos
vim.o.fileformat = 'unix'
-- Habilitar la compatibilidad con el portapapeles del sistema
vim.o.clipboard = 'unnamedplus'
-- Configurar la tecla para leader
vim.g.mapleader = ','
