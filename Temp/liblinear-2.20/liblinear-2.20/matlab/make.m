% This make.m is for MATLAB and OCTAVE under Windows, Mac, and Unix
function make()
try
	if
		mex CFLAGS="\$CFLAGS -std=c99" -largeArrayDims libsvmread.c
		mex CFLAGS="\$CFLAGS -std=c99" -largeArrayDims libsvmwrite.c
		mex CFLAGS="\$CFLAGS -std=c99" -I.. -largeArrayDims train.c linear_model_matlab.c ../linear.cpp ../tron.cpp ../blas/daxpy.c ../blas/ddot.c ../blas/dnrm2.c ../blas/dscal.c
		mex CFLAGS="\$CFLAGS -std=c99" -I.. -largeArrayDims predict.c linear_model_matlab.c ../linear.cpp ../tron.cpp ../blas/daxpy.c ../blas/ddot.c ../blas/dnrm2.c ../blas/dscal.c
	end
catch err
	fprintf('Error: %s failed (line %d)\n', err.stack(1).file, err.stack(1).line);
	disp(err.message);
	fprintf('=> Please check README for detailed instructions.\n');
end
