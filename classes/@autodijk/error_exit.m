function err = error_exit(C, astr_id, varargin)
%
% NAME
%
%  function str_code = error_exit(C, astr_id, format, ...)
%
% ARGUMENTS
% INPUT
%	C		class		cortical parellation class
%	astr_id		string		errorID
%       format, ...     string          C-style format string to print
%
% OPTIONAL
%
% DESCRIPTION
%
%	Allows for graceful exits/warnings from internal errors.
%
% NOTE:
%
% HISTORY
% 19 June 2007
% o Initial design and coding.
%

[stack, str_proc] = pop(C.mstack_proc);

fprintf(1, '\nFATAL ERROR -- (%s) %s::%s\n', C.mstr_class, C.mstr_obj, str_proc);
sfrmt   = sprintf(varargin{:});
fprintf(1, '%s', sfrmt);
error(astr_id, sfrmt);
