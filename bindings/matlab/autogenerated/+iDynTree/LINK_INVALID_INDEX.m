function varargout = LINK_INVALID_INDEX(varargin)
  narginchk(0,1)
  if nargin==0
    nargoutchk(0,1)
    varargout{1} = iDynTreeMEX(814);
  else
    nargoutchk(0,0)
    iDynTreeMEX(815,varargin{1});
  end
end
