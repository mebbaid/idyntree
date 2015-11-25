/*
 * Copyright (C) 2015 Fondazione Istituto Italiano di Tecnologia
 * Authors: Silvio Traversaro
 * CopyPolicy: Released under the terms of the LGPLv2.1 or later, see LGPL.TXT
 *
 */


#include <iDynTree/Model/FreeFloatingState.h>
#include <iDynTree/Model/Model.h>

#include <cassert>

namespace iDynTree
{

FreeFloatingPos::FreeFloatingPos(const Model& model)
{
    resize(model);
}

void FreeFloatingPos::resize(const Model& model)
{
    this->m_jointPos.resize(model.getNrOfPosCoords());
}


Transform& FreeFloatingPos::worldBasePos()
{
    return this->m_worldBasePos;
}

VectorDynSize & FreeFloatingPos::jointPos()
{
    return this->m_jointPos;
}

const Transform& FreeFloatingPos::worldBasePos() const
{
    return this->m_worldBasePos;
}

const VectorDynSize & FreeFloatingPos::jointPos() const
{
    return this->m_jointPos;
}


unsigned int FreeFloatingPos::getNrOfPosCoords() const
{
    return this->m_jointPos.size();
}

FreeFloatingPos::~FreeFloatingPos()
{
}


FreeFloatingVel::FreeFloatingVel(const Model& model)
{
    resize(model);
}

Twist& FreeFloatingVel::baseVel()
{
    return this->m_baseVel;
}

const Twist& FreeFloatingVel::baseVel() const
{
    return this->m_baseVel;
}

unsigned int FreeFloatingVel::getNrOfDOFs() const
{
    return this->m_jointVel.size();
}

VectorDynSize& FreeFloatingVel::jointVel()
{
    return this->m_jointVel;
}

const VectorDynSize& FreeFloatingVel::jointVel() const
{
    return this->m_jointVel;
}

void FreeFloatingVel::resize(const Model& model)
{
    this->m_jointVel.resize(model.getNrOfDOFs());
}

FreeFloatingVel::~FreeFloatingVel()
{

}

FreeFloatingAcc::FreeFloatingAcc(const Model& model)
{
    resize(model);
}

SpatialAcc& FreeFloatingAcc::baseAcc()
{
    return this->m_baseAcc;
}

const SpatialAcc& FreeFloatingAcc::baseAcc() const
{
    return this->m_baseAcc;
}

unsigned int FreeFloatingAcc::getNrOfDOFs() const
{
    return this->m_jointAcc.size();
}

VectorDynSize& FreeFloatingAcc::jointAcc()
{
    return this->m_jointAcc;
}

const VectorDynSize& FreeFloatingAcc::jointAcc() const
{
    return this->m_jointAcc;
}

void FreeFloatingAcc::resize(const Model& model)
{
    this->m_jointAcc.resize(model.getNrOfDOFs());
}

FreeFloatingAcc::~FreeFloatingAcc()
{

}

FreeFloatingGeneralizedTorques::FreeFloatingGeneralizedTorques(const Model& model)
{
    resize(model);
}

void FreeFloatingGeneralizedTorques::resize(const Model& model)
{
    this->m_jointTorques.resize(model.getNrOfDOFs());
}

Wrench& FreeFloatingGeneralizedTorques::baseWrench()
{
    return this->m_baseWrench;
}

VectorDynSize& FreeFloatingGeneralizedTorques::jointTorques()
{
    return this->m_jointTorques;
}

const Wrench& FreeFloatingGeneralizedTorques::baseWrench() const
{
    return this->m_baseWrench;
}

const VectorDynSize& FreeFloatingGeneralizedTorques::jointTorques() const
{
    return this->m_jointTorques;
}

unsigned int FreeFloatingGeneralizedTorques::getNrOfDOFs() const
{
    return this->m_jointTorques.size();
}

FreeFloatingGeneralizedTorques::~FreeFloatingGeneralizedTorques()
{

}


}
