# .SILENT:

THEME_RAW_NAME = "monokai-alt-smooth"
THEME_PRETTY_NAME = "Monokai Alt Smooth"


### VSCODE ###

VSCODE_EXTENSIONS_PATH = ~/.vscode/extensions

link_vscode:
	mkdir -p ${VSCODE_EXTENSIONS_PATH}/${THEME_RAW_NAME}
	ln -s $(shell pwd)/vscode/* ${VSCODE_EXTENSIONS_PATH}/${THEME_RAW_NAME}/

unlink_vscode:
	rm -rf ${VSCODE_EXTENSIONS_PATH}/${THEME_RAW_NAME}

relink_vscode: unlink_vscode link_vscode


install_vscode:
	mkdir -p ${VSCODE_EXTENSIONS_PATH}/${THEME_RAW_NAME}
	cp -r ./vscode/* ${VSCODE_EXTENSIONS_PATH}/${THEME_RAW_NAME}

remove_vscode:
	rm -rf ${VSCODE_EXTENSIONS_PATH}/${THEME_RAW_NAME}

reinstall_vscode: remove_vscode install_vscode
