classdef KinDynComputations < SwigRef
  methods
    function this = swig_this(self)
      this = iDynTreeMEX(3, self);
    end
    function self = KinDynComputations(varargin)
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = iDynTreeMEX(1625, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.SwigClear();
      end
    end
    function delete(self)
      if self.swigPtr
        iDynTreeMEX(1626, self);
        self.SwigClear();
      end
    end
    function varargout = loadRobotModel(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1627, self, varargin{:});
    end
    function varargout = loadRobotModelFromFile(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1628, self, varargin{:});
    end
    function varargout = loadRobotModelFromString(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1629, self, varargin{:});
    end
    function varargout = isValid(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1630, self, varargin{:});
    end
    function varargout = setFrameVelocityRepresentation(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1631, self, varargin{:});
    end
    function varargout = getFrameVelocityRepresentation(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1632, self, varargin{:});
    end
    function varargout = getNrOfDegreesOfFreedom(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1633, self, varargin{:});
    end
    function varargout = getDescriptionOfDegreeOfFreedom(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1634, self, varargin{:});
    end
    function varargout = getDescriptionOfDegreesOfFreedom(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1635, self, varargin{:});
    end
    function varargout = getNrOfLinks(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1636, self, varargin{:});
    end
    function varargout = getNrOfFrames(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1637, self, varargin{:});
    end
    function varargout = getFloatingBase(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1638, self, varargin{:});
    end
    function varargout = setFloatingBase(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1639, self, varargin{:});
    end
    function varargout = model(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1640, self, varargin{:});
    end
    function varargout = getRobotModel(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1641, self, varargin{:});
    end
    function varargout = setJointPos(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1642, self, varargin{:});
    end
    function varargout = setRobotState(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1643, self, varargin{:});
    end
    function varargout = getRobotState(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1644, self, varargin{:});
    end
    function varargout = getWorldBaseTransform(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1645, self, varargin{:});
    end
    function varargout = getBaseTwist(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1646, self, varargin{:});
    end
    function varargout = getJointPos(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1647, self, varargin{:});
    end
    function varargout = getJointVel(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1648, self, varargin{:});
    end
    function varargout = getModelVel(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1649, self, varargin{:});
    end
    function varargout = getFrameIndex(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1650, self, varargin{:});
    end
    function varargout = getFrameName(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1651, self, varargin{:});
    end
    function varargout = getWorldTransform(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1652, self, varargin{:});
    end
    function varargout = getRelativeTransformExplicit(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1653, self, varargin{:});
    end
    function varargout = getRelativeTransform(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1654, self, varargin{:});
    end
    function varargout = getFrameVel(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1655, self, varargin{:});
    end
    function varargout = getFrameFreeFloatingJacobian(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1656, self, varargin{:});
    end
    function varargout = getRelativeJacobian(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1657, self, varargin{:});
    end
    function varargout = getRelativeJacobianExplicit(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1658, self, varargin{:});
    end
    function varargout = getFrameBiasAcc(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1659, self, varargin{:});
    end
    function varargout = getCenterOfMassPosition(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1660, self, varargin{:});
    end
    function varargout = getCenterOfMassVelocity(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1661, self, varargin{:});
    end
    function varargout = getCenterOfMassJacobian(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1662, self, varargin{:});
    end
    function varargout = getCenterOfMassBiasAcc(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1663, self, varargin{:});
    end
    function varargout = getAverageVelocity(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1664, self, varargin{:});
    end
    function varargout = getAverageVelocityJacobian(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1665, self, varargin{:});
    end
    function varargout = getCentroidalAverageVelocity(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1666, self, varargin{:});
    end
    function varargout = getCentroidalAverageVelocityJacobian(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1667, self, varargin{:});
    end
    function varargout = getLinearAngularMomentum(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1668, self, varargin{:});
    end
    function varargout = getLinearAngularMomentumJacobian(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1669, self, varargin{:});
    end
    function varargout = getCentroidalTotalMomentum(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1670, self, varargin{:});
    end
    function varargout = getFreeFloatingMassMatrix(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1671, self, varargin{:});
    end
    function varargout = inverseDynamics(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1672, self, varargin{:});
    end
    function varargout = generalizedBiasForces(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1673, self, varargin{:});
    end
    function varargout = generalizedGravityForces(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1674, self, varargin{:});
    end
  end
  methods(Static)
  end
end
