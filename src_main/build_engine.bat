@rem
@rem If necessary, do setlocal.
@rem Then start the build.
@rem

@if "%build_level%"=="" setlocal
@call start_build %1 %2 %3


goto build_releasedebug

%MSDEV% engine/engine.dsp %CONFIG%"engine - Win32 Release" %build_target%
if errorlevel 1 set BUILD_ERROR=1

%MSDEV% engine/engine.dsp %CONFIG%"engine - Win32 Debug" %build_target%
if errorlevel 1 set BUILD_ERROR=1

goto done


@rem
@rem All done
@rem
:done
call end_build
