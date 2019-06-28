{-
   EMS API Documentation

   Enterprise Mobility Services API      [Learn about EMS](https://www.embarcadero.com/products/rad-studio/enterprise-mobility-services)      EMS (Enterprise Mobility Services) offers a Mobile Enterprise Application Platform (MEAP)      TurnKey Middleware for Interconnected Distributed Apps

   OpenAPI spec version: 2.0
   EMS API Documentation API version: 0.0.0
   Generated by Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
-}

{-|
Module : EMSAPIDocumentation.Lens
-}

{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-matches -fno-warn-unused-binds -fno-warn-unused-imports #-}

module EMSAPIDocumentation.ModelLens where

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Data, Typeable)
import qualified Data.Map as Map
import qualified Data.Set as Set
import qualified Data.Time as TI

import Data.Text (Text)

import Prelude (($), (.),(<$>),(<*>),(=<<),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

import EMSAPIDocumentation.Model
import EMSAPIDocumentation.Core


-- * ChannelName



-- * EdgeModuleAddObject

-- | 'edgeModuleAddObjectModulename' Lens
edgeModuleAddObjectModulenameL :: Lens_' EdgeModuleAddObject (Text)
edgeModuleAddObjectModulenameL f EdgeModuleAddObject{..} = (\edgeModuleAddObjectModulename -> EdgeModuleAddObject { edgeModuleAddObjectModulename, ..} ) <$> f edgeModuleAddObjectModulename
{-# INLINE edgeModuleAddObjectModulenameL #-}

-- | 'edgeModuleAddObjectProtocol' Lens
edgeModuleAddObjectProtocolL :: Lens_' EdgeModuleAddObject (Text)
edgeModuleAddObjectProtocolL f EdgeModuleAddObject{..} = (\edgeModuleAddObjectProtocol -> EdgeModuleAddObject { edgeModuleAddObjectProtocol, ..} ) <$> f edgeModuleAddObjectProtocol
{-# INLINE edgeModuleAddObjectProtocolL #-}

-- | 'edgeModuleAddObjectProtocolprops' Lens
edgeModuleAddObjectProtocolpropsL :: Lens_' EdgeModuleAddObject (Text)
edgeModuleAddObjectProtocolpropsL f EdgeModuleAddObject{..} = (\edgeModuleAddObjectProtocolprops -> EdgeModuleAddObject { edgeModuleAddObjectProtocolprops, ..} ) <$> f edgeModuleAddObjectProtocolprops
{-# INLINE edgeModuleAddObjectProtocolpropsL #-}



-- * EdgeModuleAddedObject

-- | 'edgeModuleAddedObjectId' Lens
edgeModuleAddedObjectIdL :: Lens_' EdgeModuleAddedObject (Text)
edgeModuleAddedObjectIdL f EdgeModuleAddedObject{..} = (\edgeModuleAddedObjectId -> EdgeModuleAddedObject { edgeModuleAddedObjectId, ..} ) <$> f edgeModuleAddedObjectId
{-# INLINE edgeModuleAddedObjectIdL #-}

-- | 'edgeModuleAddedObjectModulename' Lens
edgeModuleAddedObjectModulenameL :: Lens_' EdgeModuleAddedObject (Text)
edgeModuleAddedObjectModulenameL f EdgeModuleAddedObject{..} = (\edgeModuleAddedObjectModulename -> EdgeModuleAddedObject { edgeModuleAddedObjectModulename, ..} ) <$> f edgeModuleAddedObjectModulename
{-# INLINE edgeModuleAddedObjectModulenameL #-}



-- * EdgeModuleObject

-- | 'edgeModuleObjectModulename' Lens
edgeModuleObjectModulenameL :: Lens_' EdgeModuleObject (Text)
edgeModuleObjectModulenameL f EdgeModuleObject{..} = (\edgeModuleObjectModulename -> EdgeModuleObject { edgeModuleObjectModulename, ..} ) <$> f edgeModuleObjectModulename
{-# INLINE edgeModuleObjectModulenameL #-}

-- | 'edgeModuleObjectId' Lens
edgeModuleObjectIdL :: Lens_' EdgeModuleObject (Text)
edgeModuleObjectIdL f EdgeModuleObject{..} = (\edgeModuleObjectId -> EdgeModuleObject { edgeModuleObjectId, ..} ) <$> f edgeModuleObjectId
{-# INLINE edgeModuleObjectIdL #-}

-- | 'edgeModuleObjectProtocol' Lens
edgeModuleObjectProtocolL :: Lens_' EdgeModuleObject (Text)
edgeModuleObjectProtocolL f EdgeModuleObject{..} = (\edgeModuleObjectProtocol -> EdgeModuleObject { edgeModuleObjectProtocol, ..} ) <$> f edgeModuleObjectProtocol
{-# INLINE edgeModuleObjectProtocolL #-}

-- | 'edgeModuleObjectProtocolprops' Lens
edgeModuleObjectProtocolpropsL :: Lens_' EdgeModuleObject (Text)
edgeModuleObjectProtocolpropsL f EdgeModuleObject{..} = (\edgeModuleObjectProtocolprops -> EdgeModuleObject { edgeModuleObjectProtocolprops, ..} ) <$> f edgeModuleObjectProtocolprops
{-# INLINE edgeModuleObjectProtocolpropsL #-}

-- | 'edgeModuleObjectMeta' Lens
edgeModuleObjectMetaL :: Lens_' EdgeModuleObject (MetaEdgeModuleObject)
edgeModuleObjectMetaL f EdgeModuleObject{..} = (\edgeModuleObjectMeta -> EdgeModuleObject { edgeModuleObjectMeta, ..} ) <$> f edgeModuleObjectMeta
{-# INLINE edgeModuleObjectMetaL #-}



-- * EdgeModuleResourceAddObject

-- | 'edgeModuleResourceAddObjectResourcename' Lens
edgeModuleResourceAddObjectResourcenameL :: Lens_' EdgeModuleResourceAddObject (Text)
edgeModuleResourceAddObjectResourcenameL f EdgeModuleResourceAddObject{..} = (\edgeModuleResourceAddObjectResourcename -> EdgeModuleResourceAddObject { edgeModuleResourceAddObjectResourcename, ..} ) <$> f edgeModuleResourceAddObjectResourcename
{-# INLINE edgeModuleResourceAddObjectResourcenameL #-}



-- * EdgeModuleResourceAddedObject

-- | 'edgeModuleResourceAddedObjectResourcename' Lens
edgeModuleResourceAddedObjectResourcenameL :: Lens_' EdgeModuleResourceAddedObject (Text)
edgeModuleResourceAddedObjectResourcenameL f EdgeModuleResourceAddedObject{..} = (\edgeModuleResourceAddedObjectResourcename -> EdgeModuleResourceAddedObject { edgeModuleResourceAddedObjectResourcename, ..} ) <$> f edgeModuleResourceAddedObjectResourcename
{-# INLINE edgeModuleResourceAddedObjectResourcenameL #-}



-- * EdgeModuleResourceObject

-- | 'edgeModuleResourceObjectResourcename' Lens
edgeModuleResourceObjectResourcenameL :: Lens_' EdgeModuleResourceObject (Text)
edgeModuleResourceObjectResourcenameL f EdgeModuleResourceObject{..} = (\edgeModuleResourceObjectResourcename -> EdgeModuleResourceObject { edgeModuleResourceObjectResourcename, ..} ) <$> f edgeModuleResourceObjectResourcename
{-# INLINE edgeModuleResourceObjectResourcenameL #-}

-- | 'edgeModuleResourceObjectModulename' Lens
edgeModuleResourceObjectModulenameL :: Lens_' EdgeModuleResourceObject (Text)
edgeModuleResourceObjectModulenameL f EdgeModuleResourceObject{..} = (\edgeModuleResourceObjectModulename -> EdgeModuleResourceObject { edgeModuleResourceObjectModulename, ..} ) <$> f edgeModuleResourceObjectModulename
{-# INLINE edgeModuleResourceObjectModulenameL #-}

-- | 'edgeModuleResourceObjectModuleid' Lens
edgeModuleResourceObjectModuleidL :: Lens_' EdgeModuleResourceObject (Text)
edgeModuleResourceObjectModuleidL f EdgeModuleResourceObject{..} = (\edgeModuleResourceObjectModuleid -> EdgeModuleResourceObject { edgeModuleResourceObjectModuleid, ..} ) <$> f edgeModuleResourceObjectModuleid
{-# INLINE edgeModuleResourceObjectModuleidL #-}

-- | 'edgeModuleResourceObjectMeta' Lens
edgeModuleResourceObjectMetaL :: Lens_' EdgeModuleResourceObject (MetaEdgeModuleObject)
edgeModuleResourceObjectMetaL f EdgeModuleResourceObject{..} = (\edgeModuleResourceObjectMeta -> EdgeModuleResourceObject { edgeModuleResourceObjectMeta, ..} ) <$> f edgeModuleResourceObjectMeta
{-# INLINE edgeModuleResourceObjectMetaL #-}



-- * EdgeModuleResourceUpdateObject

-- | 'edgeModuleResourceUpdateObjectResourcename' Lens
edgeModuleResourceUpdateObjectResourcenameL :: Lens_' EdgeModuleResourceUpdateObject (Maybe Text)
edgeModuleResourceUpdateObjectResourcenameL f EdgeModuleResourceUpdateObject{..} = (\edgeModuleResourceUpdateObjectResourcename -> EdgeModuleResourceUpdateObject { edgeModuleResourceUpdateObjectResourcename, ..} ) <$> f edgeModuleResourceUpdateObjectResourcename
{-# INLINE edgeModuleResourceUpdateObjectResourcenameL #-}



-- * EdgeModuleResourceUpdatedObject

-- | 'edgeModuleResourceUpdatedObjectUpdated' Lens
edgeModuleResourceUpdatedObjectUpdatedL :: Lens_' EdgeModuleResourceUpdatedObject (Text)
edgeModuleResourceUpdatedObjectUpdatedL f EdgeModuleResourceUpdatedObject{..} = (\edgeModuleResourceUpdatedObjectUpdated -> EdgeModuleResourceUpdatedObject { edgeModuleResourceUpdatedObjectUpdated, ..} ) <$> f edgeModuleResourceUpdatedObjectUpdated
{-# INLINE edgeModuleResourceUpdatedObjectUpdatedL #-}



-- * EdgeModuleUpdateObject

-- | 'edgeModuleUpdateObjectModulename' Lens
edgeModuleUpdateObjectModulenameL :: Lens_' EdgeModuleUpdateObject (Text)
edgeModuleUpdateObjectModulenameL f EdgeModuleUpdateObject{..} = (\edgeModuleUpdateObjectModulename -> EdgeModuleUpdateObject { edgeModuleUpdateObjectModulename, ..} ) <$> f edgeModuleUpdateObjectModulename
{-# INLINE edgeModuleUpdateObjectModulenameL #-}

-- | 'edgeModuleUpdateObjectProtocol' Lens
edgeModuleUpdateObjectProtocolL :: Lens_' EdgeModuleUpdateObject (Text)
edgeModuleUpdateObjectProtocolL f EdgeModuleUpdateObject{..} = (\edgeModuleUpdateObjectProtocol -> EdgeModuleUpdateObject { edgeModuleUpdateObjectProtocol, ..} ) <$> f edgeModuleUpdateObjectProtocol
{-# INLINE edgeModuleUpdateObjectProtocolL #-}

-- | 'edgeModuleUpdateObjectProtocolprops' Lens
edgeModuleUpdateObjectProtocolpropsL :: Lens_' EdgeModuleUpdateObject (Text)
edgeModuleUpdateObjectProtocolpropsL f EdgeModuleUpdateObject{..} = (\edgeModuleUpdateObjectProtocolprops -> EdgeModuleUpdateObject { edgeModuleUpdateObjectProtocolprops, ..} ) <$> f edgeModuleUpdateObjectProtocolprops
{-# INLINE edgeModuleUpdateObjectProtocolpropsL #-}



-- * EdgeModuleUpdatedObject

-- | 'edgeModuleUpdatedObjectUpdated' Lens
edgeModuleUpdatedObjectUpdatedL :: Lens_' EdgeModuleUpdatedObject (Text)
edgeModuleUpdatedObjectUpdatedL f EdgeModuleUpdatedObject{..} = (\edgeModuleUpdatedObjectUpdated -> EdgeModuleUpdatedObject { edgeModuleUpdatedObjectUpdated, ..} ) <$> f edgeModuleUpdatedObjectUpdated
{-# INLINE edgeModuleUpdatedObjectUpdatedL #-}



-- * FieldGroupObject

-- | 'fieldGroupObjectName' Lens
fieldGroupObjectNameL :: Lens_' FieldGroupObject (Text)
fieldGroupObjectNameL f FieldGroupObject{..} = (\fieldGroupObjectName -> FieldGroupObject { fieldGroupObjectName, ..} ) <$> f fieldGroupObjectName
{-# INLINE fieldGroupObjectNameL #-}

-- | 'fieldGroupObjectFields' Lens
fieldGroupObjectFieldsL :: Lens_' FieldGroupObject (Maybe [FieldObjectFields])
fieldGroupObjectFieldsL f FieldGroupObject{..} = (\fieldGroupObjectFields -> FieldGroupObject { fieldGroupObjectFields, ..} ) <$> f fieldGroupObjectFields
{-# INLINE fieldGroupObjectFieldsL #-}

-- | 'fieldGroupObjectCustom' Lens
fieldGroupObjectCustomL :: Lens_' FieldGroupObject (Maybe Bool)
fieldGroupObjectCustomL f FieldGroupObject{..} = (\fieldGroupObjectCustom -> FieldGroupObject { fieldGroupObjectCustom, ..} ) <$> f fieldGroupObjectCustom
{-# INLINE fieldGroupObjectCustomL #-}



-- * FieldInstallationObject

-- | 'fieldInstallationObjectName' Lens
fieldInstallationObjectNameL :: Lens_' FieldInstallationObject (Text)
fieldInstallationObjectNameL f FieldInstallationObject{..} = (\fieldInstallationObjectName -> FieldInstallationObject { fieldInstallationObjectName, ..} ) <$> f fieldInstallationObjectName
{-# INLINE fieldInstallationObjectNameL #-}

-- | 'fieldInstallationObjectFields' Lens
fieldInstallationObjectFieldsL :: Lens_' FieldInstallationObject (Maybe [FieldObjectFields])
fieldInstallationObjectFieldsL f FieldInstallationObject{..} = (\fieldInstallationObjectFields -> FieldInstallationObject { fieldInstallationObjectFields, ..} ) <$> f fieldInstallationObjectFields
{-# INLINE fieldInstallationObjectFieldsL #-}

-- | 'fieldInstallationObjectCustom' Lens
fieldInstallationObjectCustomL :: Lens_' FieldInstallationObject (Maybe Bool)
fieldInstallationObjectCustomL f FieldInstallationObject{..} = (\fieldInstallationObjectCustom -> FieldInstallationObject { fieldInstallationObjectCustom, ..} ) <$> f fieldInstallationObjectCustom
{-# INLINE fieldInstallationObjectCustomL #-}



-- * FieldObject

-- | 'fieldObjectName' Lens
fieldObjectNameL :: Lens_' FieldObject (Text)
fieldObjectNameL f FieldObject{..} = (\fieldObjectName -> FieldObject { fieldObjectName, ..} ) <$> f fieldObjectName
{-# INLINE fieldObjectNameL #-}

-- | 'fieldObjectFields' Lens
fieldObjectFieldsL :: Lens_' FieldObject (Maybe [FieldObjectFields])
fieldObjectFieldsL f FieldObject{..} = (\fieldObjectFields -> FieldObject { fieldObjectFields, ..} ) <$> f fieldObjectFields
{-# INLINE fieldObjectFieldsL #-}

-- | 'fieldObjectCustom' Lens
fieldObjectCustomL :: Lens_' FieldObject (Maybe Bool)
fieldObjectCustomL f FieldObject{..} = (\fieldObjectCustom -> FieldObject { fieldObjectCustom, ..} ) <$> f fieldObjectCustom
{-# INLINE fieldObjectCustomL #-}



-- * FieldObjectFields

-- | 'fieldObjectFieldsName' Lens
fieldObjectFieldsNameL :: Lens_' FieldObjectFields (Maybe Text)
fieldObjectFieldsNameL f FieldObjectFields{..} = (\fieldObjectFieldsName -> FieldObjectFields { fieldObjectFieldsName, ..} ) <$> f fieldObjectFieldsName
{-# INLINE fieldObjectFieldsNameL #-}



-- * FieldsEdgeModuleObject

-- | 'fieldsEdgeModuleObjectName' Lens
fieldsEdgeModuleObjectNameL :: Lens_' FieldsEdgeModuleObject (Text)
fieldsEdgeModuleObjectNameL f FieldsEdgeModuleObject{..} = (\fieldsEdgeModuleObjectName -> FieldsEdgeModuleObject { fieldsEdgeModuleObjectName, ..} ) <$> f fieldsEdgeModuleObjectName
{-# INLINE fieldsEdgeModuleObjectNameL #-}

-- | 'fieldsEdgeModuleObjectFields' Lens
fieldsEdgeModuleObjectFieldsL :: Lens_' FieldsEdgeModuleObject (Maybe [FieldObjectFields])
fieldsEdgeModuleObjectFieldsL f FieldsEdgeModuleObject{..} = (\fieldsEdgeModuleObjectFields -> FieldsEdgeModuleObject { fieldsEdgeModuleObjectFields, ..} ) <$> f fieldsEdgeModuleObjectFields
{-# INLINE fieldsEdgeModuleObjectFieldsL #-}

-- | 'fieldsEdgeModuleObjectCustom' Lens
fieldsEdgeModuleObjectCustomL :: Lens_' FieldsEdgeModuleObject (Maybe Bool)
fieldsEdgeModuleObjectCustomL f FieldsEdgeModuleObject{..} = (\fieldsEdgeModuleObjectCustom -> FieldsEdgeModuleObject { fieldsEdgeModuleObjectCustom, ..} ) <$> f fieldsEdgeModuleObjectCustom
{-# INLINE fieldsEdgeModuleObjectCustomL #-}



-- * GroupAddObject

-- | 'groupAddObjectGroupname' Lens
groupAddObjectGroupnameL :: Lens_' GroupAddObject (Text)
groupAddObjectGroupnameL f GroupAddObject{..} = (\groupAddObjectGroupname -> GroupAddObject { groupAddObjectGroupname, ..} ) <$> f groupAddObjectGroupname
{-# INLINE groupAddObjectGroupnameL #-}



-- * GroupName



-- * GroupObject

-- | 'groupObjectName' Lens
groupObjectNameL :: Lens_' GroupObject (Text)
groupObjectNameL f GroupObject{..} = (\groupObjectName -> GroupObject { groupObjectName, ..} ) <$> f groupObjectName
{-# INLINE groupObjectNameL #-}

-- | 'groupObjectMeta' Lens
groupObjectMetaL :: Lens_' GroupObject (MetaGroupObject)
groupObjectMetaL f GroupObject{..} = (\groupObjectMeta -> GroupObject { groupObjectMeta, ..} ) <$> f groupObjectMeta
{-# INLINE groupObjectMetaL #-}

-- | 'groupObjectUsers' Lens
groupObjectUsersL :: Lens_' GroupObject (Maybe [Text])
groupObjectUsersL f GroupObject{..} = (\groupObjectUsers -> GroupObject { groupObjectUsers, ..} ) <$> f groupObjectUsers
{-# INLINE groupObjectUsersL #-}



-- * InstallationAddObject

-- | 'installationAddObjectDeviceToken' Lens
installationAddObjectDeviceTokenL :: Lens_' InstallationAddObject (Text)
installationAddObjectDeviceTokenL f InstallationAddObject{..} = (\installationAddObjectDeviceToken -> InstallationAddObject { installationAddObjectDeviceToken, ..} ) <$> f installationAddObjectDeviceToken
{-# INLINE installationAddObjectDeviceTokenL #-}

-- | 'installationAddObjectDeviceType' Lens
installationAddObjectDeviceTypeL :: Lens_' InstallationAddObject (Text)
installationAddObjectDeviceTypeL f InstallationAddObject{..} = (\installationAddObjectDeviceType -> InstallationAddObject { installationAddObjectDeviceType, ..} ) <$> f installationAddObjectDeviceType
{-# INLINE installationAddObjectDeviceTypeL #-}

-- | 'installationAddObjectChannels' Lens
installationAddObjectChannelsL :: Lens_' InstallationAddObject (Maybe [Text])
installationAddObjectChannelsL f InstallationAddObject{..} = (\installationAddObjectChannels -> InstallationAddObject { installationAddObjectChannels, ..} ) <$> f installationAddObjectChannels
{-# INLINE installationAddObjectChannelsL #-}



-- * InstallationAddedObject

-- | 'installationAddedObjectId' Lens
installationAddedObjectIdL :: Lens_' InstallationAddedObject (Text)
installationAddedObjectIdL f InstallationAddedObject{..} = (\installationAddedObjectId -> InstallationAddedObject { installationAddedObjectId, ..} ) <$> f installationAddedObjectId
{-# INLINE installationAddedObjectIdL #-}



-- * InstallationObject

-- | 'installationObjectId' Lens
installationObjectIdL :: Lens_' InstallationObject (Text)
installationObjectIdL f InstallationObject{..} = (\installationObjectId -> InstallationObject { installationObjectId, ..} ) <$> f installationObjectId
{-# INLINE installationObjectIdL #-}

-- | 'installationObjectDeviceToken' Lens
installationObjectDeviceTokenL :: Lens_' InstallationObject (Text)
installationObjectDeviceTokenL f InstallationObject{..} = (\installationObjectDeviceToken -> InstallationObject { installationObjectDeviceToken, ..} ) <$> f installationObjectDeviceToken
{-# INLINE installationObjectDeviceTokenL #-}

-- | 'installationObjectDeviceType' Lens
installationObjectDeviceTypeL :: Lens_' InstallationObject (E'DeviceType)
installationObjectDeviceTypeL f InstallationObject{..} = (\installationObjectDeviceType -> InstallationObject { installationObjectDeviceType, ..} ) <$> f installationObjectDeviceType
{-# INLINE installationObjectDeviceTypeL #-}

-- | 'installationObjectMeta' Lens
installationObjectMetaL :: Lens_' InstallationObject (MetaInstallationObject)
installationObjectMetaL f InstallationObject{..} = (\installationObjectMeta -> InstallationObject { installationObjectMeta, ..} ) <$> f installationObjectMeta
{-# INLINE installationObjectMetaL #-}

-- | 'installationObjectChannels' Lens
installationObjectChannelsL :: Lens_' InstallationObject (Maybe [Text])
installationObjectChannelsL f InstallationObject{..} = (\installationObjectChannels -> InstallationObject { installationObjectChannels, ..} ) <$> f installationObjectChannels
{-# INLINE installationObjectChannelsL #-}



-- * MetaEdgeModuleObject

-- | 'metaEdgeModuleObjectCreator' Lens
metaEdgeModuleObjectCreatorL :: Lens_' MetaEdgeModuleObject (Text)
metaEdgeModuleObjectCreatorL f MetaEdgeModuleObject{..} = (\metaEdgeModuleObjectCreator -> MetaEdgeModuleObject { metaEdgeModuleObjectCreator, ..} ) <$> f metaEdgeModuleObjectCreator
{-# INLINE metaEdgeModuleObjectCreatorL #-}

-- | 'metaEdgeModuleObjectCreated' Lens
metaEdgeModuleObjectCreatedL :: Lens_' MetaEdgeModuleObject (Text)
metaEdgeModuleObjectCreatedL f MetaEdgeModuleObject{..} = (\metaEdgeModuleObjectCreated -> MetaEdgeModuleObject { metaEdgeModuleObjectCreated, ..} ) <$> f metaEdgeModuleObjectCreated
{-# INLINE metaEdgeModuleObjectCreatedL #-}

-- | 'metaEdgeModuleObjectUpdated' Lens
metaEdgeModuleObjectUpdatedL :: Lens_' MetaEdgeModuleObject (Maybe Text)
metaEdgeModuleObjectUpdatedL f MetaEdgeModuleObject{..} = (\metaEdgeModuleObjectUpdated -> MetaEdgeModuleObject { metaEdgeModuleObjectUpdated, ..} ) <$> f metaEdgeModuleObjectUpdated
{-# INLINE metaEdgeModuleObjectUpdatedL #-}



-- * MetaGroupObject

-- | 'metaGroupObjectCreator' Lens
metaGroupObjectCreatorL :: Lens_' MetaGroupObject (Text)
metaGroupObjectCreatorL f MetaGroupObject{..} = (\metaGroupObjectCreator -> MetaGroupObject { metaGroupObjectCreator, ..} ) <$> f metaGroupObjectCreator
{-# INLINE metaGroupObjectCreatorL #-}

-- | 'metaGroupObjectCreated' Lens
metaGroupObjectCreatedL :: Lens_' MetaGroupObject (Text)
metaGroupObjectCreatedL f MetaGroupObject{..} = (\metaGroupObjectCreated -> MetaGroupObject { metaGroupObjectCreated, ..} ) <$> f metaGroupObjectCreated
{-# INLINE metaGroupObjectCreatedL #-}

-- | 'metaGroupObjectUpdated' Lens
metaGroupObjectUpdatedL :: Lens_' MetaGroupObject (Maybe Text)
metaGroupObjectUpdatedL f MetaGroupObject{..} = (\metaGroupObjectUpdated -> MetaGroupObject { metaGroupObjectUpdated, ..} ) <$> f metaGroupObjectUpdated
{-# INLINE metaGroupObjectUpdatedL #-}



-- * MetaInstallationObject

-- | 'metaInstallationObjectCreator' Lens
metaInstallationObjectCreatorL :: Lens_' MetaInstallationObject (Text)
metaInstallationObjectCreatorL f MetaInstallationObject{..} = (\metaInstallationObjectCreator -> MetaInstallationObject { metaInstallationObjectCreator, ..} ) <$> f metaInstallationObjectCreator
{-# INLINE metaInstallationObjectCreatorL #-}

-- | 'metaInstallationObjectCreated' Lens
metaInstallationObjectCreatedL :: Lens_' MetaInstallationObject (Text)
metaInstallationObjectCreatedL f MetaInstallationObject{..} = (\metaInstallationObjectCreated -> MetaInstallationObject { metaInstallationObjectCreated, ..} ) <$> f metaInstallationObjectCreated
{-# INLINE metaInstallationObjectCreatedL #-}

-- | 'metaInstallationObjectUpdated' Lens
metaInstallationObjectUpdatedL :: Lens_' MetaInstallationObject (Maybe Text)
metaInstallationObjectUpdatedL f MetaInstallationObject{..} = (\metaInstallationObjectUpdated -> MetaInstallationObject { metaInstallationObjectUpdated, ..} ) <$> f metaInstallationObjectUpdated
{-# INLINE metaInstallationObjectUpdatedL #-}



-- * MetaObject

-- | 'metaObjectCreator' Lens
metaObjectCreatorL :: Lens_' MetaObject (Text)
metaObjectCreatorL f MetaObject{..} = (\metaObjectCreator -> MetaObject { metaObjectCreator, ..} ) <$> f metaObjectCreator
{-# INLINE metaObjectCreatorL #-}

-- | 'metaObjectCreated' Lens
metaObjectCreatedL :: Lens_' MetaObject (Text)
metaObjectCreatedL f MetaObject{..} = (\metaObjectCreated -> MetaObject { metaObjectCreated, ..} ) <$> f metaObjectCreated
{-# INLINE metaObjectCreatedL #-}

-- | 'metaObjectUpdated' Lens
metaObjectUpdatedL :: Lens_' MetaObject (Maybe Text)
metaObjectUpdatedL f MetaObject{..} = (\metaObjectUpdated -> MetaObject { metaObjectUpdated, ..} ) <$> f metaObjectUpdated
{-# INLINE metaObjectUpdatedL #-}



-- * PushDataObject

-- | 'pushDataObjectGcm' Lens
pushDataObjectGcmL :: Lens_' PushDataObject (Maybe PushDataObjectGcm)
pushDataObjectGcmL f PushDataObject{..} = (\pushDataObjectGcm -> PushDataObject { pushDataObjectGcm, ..} ) <$> f pushDataObjectGcm
{-# INLINE pushDataObjectGcmL #-}

-- | 'pushDataObjectAps' Lens
pushDataObjectApsL :: Lens_' PushDataObject (Maybe PushDataObjectAps)
pushDataObjectApsL f PushDataObject{..} = (\pushDataObjectAps -> PushDataObject { pushDataObjectAps, ..} ) <$> f pushDataObjectAps
{-# INLINE pushDataObjectApsL #-}

-- | 'pushDataObjectExtras' Lens
pushDataObjectExtrasL :: Lens_' PushDataObject (Maybe PushDataObjectExtras)
pushDataObjectExtrasL f PushDataObject{..} = (\pushDataObjectExtras -> PushDataObject { pushDataObjectExtras, ..} ) <$> f pushDataObjectExtras
{-# INLINE pushDataObjectExtrasL #-}



-- * PushDataObjectAps

-- | 'pushDataObjectApsAlert' Lens
pushDataObjectApsAlertL :: Lens_' PushDataObjectAps (Maybe Text)
pushDataObjectApsAlertL f PushDataObjectAps{..} = (\pushDataObjectApsAlert -> PushDataObjectAps { pushDataObjectApsAlert, ..} ) <$> f pushDataObjectApsAlert
{-# INLINE pushDataObjectApsAlertL #-}

-- | 'pushDataObjectApsBadge' Lens
pushDataObjectApsBadgeL :: Lens_' PushDataObjectAps (Maybe Text)
pushDataObjectApsBadgeL f PushDataObjectAps{..} = (\pushDataObjectApsBadge -> PushDataObjectAps { pushDataObjectApsBadge, ..} ) <$> f pushDataObjectApsBadge
{-# INLINE pushDataObjectApsBadgeL #-}

-- | 'pushDataObjectApsSound' Lens
pushDataObjectApsSoundL :: Lens_' PushDataObjectAps (Maybe Text)
pushDataObjectApsSoundL f PushDataObjectAps{..} = (\pushDataObjectApsSound -> PushDataObjectAps { pushDataObjectApsSound, ..} ) <$> f pushDataObjectApsSound
{-# INLINE pushDataObjectApsSoundL #-}



-- * PushDataObjectExtras

-- | 'pushDataObjectExtrasMessage' Lens
pushDataObjectExtrasMessageL :: Lens_' PushDataObjectExtras (Maybe Text)
pushDataObjectExtrasMessageL f PushDataObjectExtras{..} = (\pushDataObjectExtrasMessage -> PushDataObjectExtras { pushDataObjectExtrasMessage, ..} ) <$> f pushDataObjectExtrasMessage
{-# INLINE pushDataObjectExtrasMessageL #-}



-- * PushDataObjectGcm

-- | 'pushDataObjectGcmMessage' Lens
pushDataObjectGcmMessageL :: Lens_' PushDataObjectGcm (Maybe Text)
pushDataObjectGcmMessageL f PushDataObjectGcm{..} = (\pushDataObjectGcmMessage -> PushDataObjectGcm { pushDataObjectGcmMessage, ..} ) <$> f pushDataObjectGcmMessage
{-# INLINE pushDataObjectGcmMessageL #-}

-- | 'pushDataObjectGcmTitle' Lens
pushDataObjectGcmTitleL :: Lens_' PushDataObjectGcm (Maybe Text)
pushDataObjectGcmTitleL f PushDataObjectGcm{..} = (\pushDataObjectGcmTitle -> PushDataObjectGcm { pushDataObjectGcmTitle, ..} ) <$> f pushDataObjectGcmTitle
{-# INLINE pushDataObjectGcmTitleL #-}



-- * PushObject

-- | 'pushObjectData' Lens
pushObjectDataL :: Lens_' PushObject (PushDataObject)
pushObjectDataL f PushObject{..} = (\pushObjectData -> PushObject { pushObjectData, ..} ) <$> f pushObjectData
{-# INLINE pushObjectDataL #-}

-- | 'pushObjectChannels' Lens
pushObjectChannelsL :: Lens_' PushObject (Maybe [Text])
pushObjectChannelsL f PushObject{..} = (\pushObjectChannels -> PushObject { pushObjectChannels, ..} ) <$> f pushObjectChannels
{-# INLINE pushObjectChannelsL #-}

-- | 'pushObjectWhere' Lens
pushObjectWhereL :: Lens_' PushObject (PushWhereObject)
pushObjectWhereL f PushObject{..} = (\pushObjectWhere -> PushObject { pushObjectWhere, ..} ) <$> f pushObjectWhere
{-# INLINE pushObjectWhereL #-}



-- * PushWhereObject

-- | 'pushWhereObjectDeviceType' Lens
pushWhereObjectDeviceTypeL :: Lens_' PushWhereObject (Maybe E'DeviceType)
pushWhereObjectDeviceTypeL f PushWhereObject{..} = (\pushWhereObjectDeviceType -> PushWhereObject { pushWhereObjectDeviceType, ..} ) <$> f pushWhereObjectDeviceType
{-# INLINE pushWhereObjectDeviceTypeL #-}

-- | 'pushWhereObjectDeviceToken' Lens
pushWhereObjectDeviceTokenL :: Lens_' PushWhereObject (Maybe PushWhereObjectDeviceToken)
pushWhereObjectDeviceTokenL f PushWhereObject{..} = (\pushWhereObjectDeviceToken -> PushWhereObject { pushWhereObjectDeviceToken, ..} ) <$> f pushWhereObjectDeviceToken
{-# INLINE pushWhereObjectDeviceTokenL #-}



-- * PushWhereObjectDeviceToken

-- | 'pushWhereObjectDeviceTokenIn' Lens
pushWhereObjectDeviceTokenInL :: Lens_' PushWhereObjectDeviceToken ([Text])
pushWhereObjectDeviceTokenInL f PushWhereObjectDeviceToken{..} = (\pushWhereObjectDeviceTokenIn -> PushWhereObjectDeviceToken { pushWhereObjectDeviceTokenIn, ..} ) <$> f pushWhereObjectDeviceTokenIn
{-# INLINE pushWhereObjectDeviceTokenInL #-}



-- * UpdateGroupObject

-- | 'updateGroupObjectFieldName' Lens
updateGroupObjectFieldNameL :: Lens_' UpdateGroupObject (Maybe Text)
updateGroupObjectFieldNameL f UpdateGroupObject{..} = (\updateGroupObjectFieldName -> UpdateGroupObject { updateGroupObjectFieldName, ..} ) <$> f updateGroupObjectFieldName
{-# INLINE updateGroupObjectFieldNameL #-}

-- | 'updateGroupObjectUsers' Lens
updateGroupObjectUsersL :: Lens_' UpdateGroupObject (Maybe [Text])
updateGroupObjectUsersL f UpdateGroupObject{..} = (\updateGroupObjectUsers -> UpdateGroupObject { updateGroupObjectUsers, ..} ) <$> f updateGroupObjectUsers
{-# INLINE updateGroupObjectUsersL #-}



-- * UpdateInstallationObject

-- | 'updateInstallationObjectChannels' Lens
updateInstallationObjectChannelsL :: Lens_' UpdateInstallationObject (Maybe [Text])
updateInstallationObjectChannelsL f UpdateInstallationObject{..} = (\updateInstallationObjectChannels -> UpdateInstallationObject { updateInstallationObjectChannels, ..} ) <$> f updateInstallationObjectChannels
{-# INLINE updateInstallationObjectChannelsL #-}



-- * UpdateObject

-- | 'updateObjectFieldName' Lens
updateObjectFieldNameL :: Lens_' UpdateObject (Maybe Text)
updateObjectFieldNameL f UpdateObject{..} = (\updateObjectFieldName -> UpdateObject { updateObjectFieldName, ..} ) <$> f updateObjectFieldName
{-# INLINE updateObjectFieldNameL #-}



-- * UpdatedGroupObject

-- | 'updatedGroupObjectUpdated' Lens
updatedGroupObjectUpdatedL :: Lens_' UpdatedGroupObject (Text)
updatedGroupObjectUpdatedL f UpdatedGroupObject{..} = (\updatedGroupObjectUpdated -> UpdatedGroupObject { updatedGroupObjectUpdated, ..} ) <$> f updatedGroupObjectUpdated
{-# INLINE updatedGroupObjectUpdatedL #-}



-- * UpdatedInstallationObject

-- | 'updatedInstallationObjectUpdated' Lens
updatedInstallationObjectUpdatedL :: Lens_' UpdatedInstallationObject (Text)
updatedInstallationObjectUpdatedL f UpdatedInstallationObject{..} = (\updatedInstallationObjectUpdated -> UpdatedInstallationObject { updatedInstallationObjectUpdated, ..} ) <$> f updatedInstallationObjectUpdated
{-# INLINE updatedInstallationObjectUpdatedL #-}



-- * UpdatedObject

-- | 'updatedObjectUpdated' Lens
updatedObjectUpdatedL :: Lens_' UpdatedObject (Text)
updatedObjectUpdatedL f UpdatedObject{..} = (\updatedObjectUpdated -> UpdatedObject { updatedObjectUpdated, ..} ) <$> f updatedObjectUpdated
{-# INLINE updatedObjectUpdatedL #-}



-- * UserCredentialsObject

-- | 'userCredentialsObjectUsername' Lens
userCredentialsObjectUsernameL :: Lens_' UserCredentialsObject (Text)
userCredentialsObjectUsernameL f UserCredentialsObject{..} = (\userCredentialsObjectUsername -> UserCredentialsObject { userCredentialsObjectUsername, ..} ) <$> f userCredentialsObjectUsername
{-# INLINE userCredentialsObjectUsernameL #-}

-- | 'userCredentialsObjectPassword' Lens
userCredentialsObjectPasswordL :: Lens_' UserCredentialsObject (Text)
userCredentialsObjectPasswordL f UserCredentialsObject{..} = (\userCredentialsObjectPassword -> UserCredentialsObject { userCredentialsObjectPassword, ..} ) <$> f userCredentialsObjectPassword
{-# INLINE userCredentialsObjectPasswordL #-}



-- * UserObject

-- | 'userObjectId' Lens
userObjectIdL :: Lens_' UserObject (Text)
userObjectIdL f UserObject{..} = (\userObjectId -> UserObject { userObjectId, ..} ) <$> f userObjectId
{-# INLINE userObjectIdL #-}

-- | 'userObjectUsername' Lens
userObjectUsernameL :: Lens_' UserObject (Text)
userObjectUsernameL f UserObject{..} = (\userObjectUsername -> UserObject { userObjectUsername, ..} ) <$> f userObjectUsername
{-# INLINE userObjectUsernameL #-}

-- | 'userObjectMeta' Lens
userObjectMetaL :: Lens_' UserObject (MetaObject)
userObjectMetaL f UserObject{..} = (\userObjectMeta -> UserObject { userObjectMeta, ..} ) <$> f userObjectMeta
{-# INLINE userObjectMetaL #-}



-- * UserSignUpResponseObject

-- | 'userSignUpResponseObjectId' Lens
userSignUpResponseObjectIdL :: Lens_' UserSignUpResponseObject (Text)
userSignUpResponseObjectIdL f UserSignUpResponseObject{..} = (\userSignUpResponseObjectId -> UserSignUpResponseObject { userSignUpResponseObjectId, ..} ) <$> f userSignUpResponseObjectId
{-# INLINE userSignUpResponseObjectIdL #-}

-- | 'userSignUpResponseObjectSessionToken' Lens
userSignUpResponseObjectSessionTokenL :: Lens_' UserSignUpResponseObject (Text)
userSignUpResponseObjectSessionTokenL f UserSignUpResponseObject{..} = (\userSignUpResponseObjectSessionToken -> UserSignUpResponseObject { userSignUpResponseObjectSessionToken, ..} ) <$> f userSignUpResponseObjectSessionToken
{-# INLINE userSignUpResponseObjectSessionTokenL #-}



-- * UserTokenObject

-- | 'userTokenObjectId' Lens
userTokenObjectIdL :: Lens_' UserTokenObject (Text)
userTokenObjectIdL f UserTokenObject{..} = (\userTokenObjectId -> UserTokenObject { userTokenObjectId, ..} ) <$> f userTokenObjectId
{-# INLINE userTokenObjectIdL #-}

-- | 'userTokenObjectUsername' Lens
userTokenObjectUsernameL :: Lens_' UserTokenObject (Text)
userTokenObjectUsernameL f UserTokenObject{..} = (\userTokenObjectUsername -> UserTokenObject { userTokenObjectUsername, ..} ) <$> f userTokenObjectUsername
{-# INLINE userTokenObjectUsernameL #-}

-- | 'userTokenObjectMeta' Lens
userTokenObjectMetaL :: Lens_' UserTokenObject (MetaObject)
userTokenObjectMetaL f UserTokenObject{..} = (\userTokenObjectMeta -> UserTokenObject { userTokenObjectMeta, ..} ) <$> f userTokenObjectMeta
{-# INLINE userTokenObjectMetaL #-}

-- | 'userTokenObjectSessiontoken' Lens
userTokenObjectSessiontokenL :: Lens_' UserTokenObject (Text)
userTokenObjectSessiontokenL f UserTokenObject{..} = (\userTokenObjectSessiontoken -> UserTokenObject { userTokenObjectSessiontoken, ..} ) <$> f userTokenObjectSessiontoken
{-# INLINE userTokenObjectSessiontokenL #-}



-- * UseridObject

-- | 'useridObjectId' Lens
useridObjectIdL :: Lens_' UseridObject (Text)
useridObjectIdL f UseridObject{..} = (\useridObjectId -> UseridObject { useridObjectId, ..} ) <$> f useridObjectId
{-# INLINE useridObjectIdL #-}



-- * VersionObject

-- | 'versionObjectVersion' Lens
versionObjectVersionL :: Lens_' VersionObject (Maybe Text)
versionObjectVersionL f VersionObject{..} = (\versionObjectVersion -> VersionObject { versionObjectVersion, ..} ) <$> f versionObjectVersion
{-# INLINE versionObjectVersionL #-}

-- | 'versionObjectServer' Lens
versionObjectServerL :: Lens_' VersionObject (Maybe Text)
versionObjectServerL f VersionObject{..} = (\versionObjectServer -> VersionObject { versionObjectServer, ..} ) <$> f versionObjectServer
{-# INLINE versionObjectServerL #-}


