classdef IJetsVisualization < SwigRef
  methods
    function this = swig_this(self)
      this = iDynTreeMEX(3, self);
    end
    function delete(self)
      if self.swigPtr
        iDynTreeMEX(1661, self);
        self.swigPtr=[];
      end
    end
    function varargout = setJetsFrames(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1662, self, varargin{:});
    end
    function varargout = getNrOfJets(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1663, self, varargin{:});
    end
    function varargout = getJetDirection(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1664, self, varargin{:});
    end
    function varargout = setJetDirection(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1665, self, varargin{:});
    end
    function varargout = setJetColor(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1666, self, varargin{:});
    end
    function varargout = setJetsDimensions(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1667, self, varargin{:});
    end
    function varargout = setJetsIntensity(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1668, self, varargin{:});
    end
    function self = IJetsVisualization(varargin)
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
