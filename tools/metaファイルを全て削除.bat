@PUSHD %~d0%~p0

@ECHO ==========================================================
@ECHO %~nx0
@ECHO.
@ECHO �g�����F
@ECHO   ���̃o�b�`�t�@�C���ɁA�����������t�H���_���h���b�O���h���b�v����
@ECHO ==========================================================
@ECHO.
@ECHO �����L�[�������Ə������J�n���܂�
@PAUSE> nul

@CALL ..\scripts\PythonSetVariables.bat
@python "%~n0/main.py" %1

@pause
@POPD
