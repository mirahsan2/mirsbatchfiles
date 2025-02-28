@echo
@echo

netsh int ip reset

@echo
@echo

netsh winsock reset

@echo
@echo

ipconfig /flushdns

@echo
@echo

ipconfig /registerdns

@echo
@echo

pause
end
exit
