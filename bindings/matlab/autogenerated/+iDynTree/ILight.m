classdef ILight < SwigRef
  methods
    function this = swig_this(self)
      this = iDynTreeMEX(3, self);
    end
    function delete(self)
      if self.swigPtr
        iDynTreeMEX(1689, self);
        self.SwigClear();
      end
    end
    function varargout = getName(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1690, self, varargin{:});
    end
    function varargout = setType(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1691, self, varargin{:});
    end
    function varargout = getType(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1692, self, varargin{:});
    end
    function varargout = setPosition(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1693, self, varargin{:});
    end
    function varargout = getPosition(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1694, self, varargin{:});
    end
    function varargout = setDirection(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1695, self, varargin{:});
    end
    function varargout = getDirection(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1696, self, varargin{:});
    end
    function varargout = setAmbientColor(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1697, self, varargin{:});
    end
    function varargout = getAmbientColor(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1698, self, varargin{:});
    end
    function varargout = setSpecularColor(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1699, self, varargin{:});
    end
    function varargout = getSpecularColor(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1700, self, varargin{:});
    end
    function varargout = setDiffuseColor(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1701, self, varargin{:});
    end
    function varargout = getDiffuseColor(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1702, self, varargin{:});
    end
    function self = ILight(varargin)
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        error('No matching constructor');
      end
    end
  end
  methods(Static)
  end
end
