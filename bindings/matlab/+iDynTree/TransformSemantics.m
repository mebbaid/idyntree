classdef TransformSemantics < SwigRef
  methods
    function self = TransformSemantics(varargin)
      if nargin~=1 || ~ischar(varargin{1}) || ~strcmp(varargin{1},'_swigCreate')
        % How to get working on C side? Commented out, replaed by hack below
        %self.swigInd = iDynTreeMATLAB_wrap(185,'new_TransformSemantics',varargin{:});
        tmp = iDynTreeMATLAB_wrap(185,'new_TransformSemantics',varargin{:}); % FIXME
        self.swigInd = tmp.swigInd;
        tmp.swigInd = uint64(0);
      end
    end
    function delete(self)
      if self.swigInd
        iDynTreeMATLAB_wrap(186,'delete_TransformSemantics',self);
        self.swigInd=uint64(0);
      end
    end
    function varargout = getRotationSemantics(self,varargin)
      [varargout{1:max(1,nargout)}] = iDynTreeMATLAB_wrap(187,'TransformSemantics_getRotationSemantics',self,varargin{:});
    end
    function varargout = getPositionSemantics(self,varargin)
      [varargout{1:max(1,nargout)}] = iDynTreeMATLAB_wrap(188,'TransformSemantics_getPositionSemantics',self,varargin{:});
    end
    function varargout = setRotationSemantics(self,varargin)
      [varargout{1:max(1,nargout)}] = iDynTreeMATLAB_wrap(189,'TransformSemantics_setRotationSemantics',self,varargin{:});
    end
    function varargout = setPositionSemantics(self,varargin)
      [varargout{1:max(1,nargout)}] = iDynTreeMATLAB_wrap(190,'TransformSemantics_setPositionSemantics',self,varargin{:});
    end
    function varargout = getPoint(self,varargin)
      [varargout{1:max(1,nargout)}] = iDynTreeMATLAB_wrap(191,'TransformSemantics_getPoint',self,varargin{:});
    end
    function varargout = getOrientationFrame(self,varargin)
      [varargout{1:max(1,nargout)}] = iDynTreeMATLAB_wrap(192,'TransformSemantics_getOrientationFrame',self,varargin{:});
    end
    function varargout = getReferencePoint(self,varargin)
      [varargout{1:max(1,nargout)}] = iDynTreeMATLAB_wrap(193,'TransformSemantics_getReferencePoint',self,varargin{:});
    end
    function varargout = getReferenceOrientationFrame(self,varargin)
      [varargout{1:max(1,nargout)}] = iDynTreeMATLAB_wrap(194,'TransformSemantics_getReferenceOrientationFrame',self,varargin{:});
    end
    function varargout = setPoint(self,varargin)
      [varargout{1:nargout}] = iDynTreeMATLAB_wrap(195,'TransformSemantics_setPoint',self,varargin{:});
    end
    function varargout = setOrientationFrame(self,varargin)
      [varargout{1:nargout}] = iDynTreeMATLAB_wrap(196,'TransformSemantics_setOrientationFrame',self,varargin{:});
    end
    function varargout = setReferencePoint(self,varargin)
      [varargout{1:nargout}] = iDynTreeMATLAB_wrap(197,'TransformSemantics_setReferencePoint',self,varargin{:});
    end
    function varargout = setReferenceOrientationFrame(self,varargin)
      [varargout{1:nargout}] = iDynTreeMATLAB_wrap(198,'TransformSemantics_setReferenceOrientationFrame',self,varargin{:});
    end
    function varargout = inverse(self,varargin)
      [varargout{1:max(1,nargout)}] = iDynTreeMATLAB_wrap(205,'TransformSemantics_inverse',self,varargin{:});
    end
    function varargout = mtimes(self,varargin)
      [varargout{1:max(1,nargout)}] = iDynTreeMATLAB_wrap(206,'TransformSemantics_mtimes',self,varargin{:});
    end
    function varargout = toString(self,varargin)
      [varargout{1:max(1,nargout)}] = iDynTreeMATLAB_wrap(207,'TransformSemantics_toString',self,varargin{:});
    end
    function varargout = display(self,varargin)
      [varargout{1:max(1,nargout)}] = iDynTreeMATLAB_wrap(208,'TransformSemantics_display',self,varargin{:});
    end
  end
  methods(Static)
    function varargout = check_compose(varargin)
      [varargout{1:max(1,nargout)}] = iDynTreeMATLAB_wrap(199,'TransformSemantics_check_compose',varargin{:});
    end
    function varargout = check_inverse2(varargin)
      [varargout{1:max(1,nargout)}] = iDynTreeMATLAB_wrap(200,'TransformSemantics_check_inverse2',varargin{:});
    end
    function varargout = check_transform(varargin)
      [varargout{1:max(1,nargout)}] = iDynTreeMATLAB_wrap(201,'TransformSemantics_check_transform',varargin{:});
    end
    function varargout = compose(varargin)
      [varargout{1:nargout}] = iDynTreeMATLAB_wrap(202,'TransformSemantics_compose',varargin{:});
    end
    function varargout = inverse2(varargin)
      [varargout{1:nargout}] = iDynTreeMATLAB_wrap(203,'TransformSemantics_inverse2',varargin{:});
    end
    function varargout = transform(varargin)
      [varargout{1:nargout}] = iDynTreeMATLAB_wrap(204,'TransformSemantics_transform',varargin{:});
    end
  end
end
