module Test.Types where

import Prelude

import Axios (class Axios, genericAxios)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Foreign.Generic (class Decode, class Encode, defaultOptions, genericDecode, genericEncode)

newtype CreateUserReq = CreateUserReq
  { name :: String
  , job :: String
  }
derive instance genericCreateUserReq :: Generic CreateUserReq _
instance decodeCreateUserReq :: Encode CreateUserReq where encode = genericEncode (defaultOptions { unwrapSingleConstructors = true })

newtype CreateUserRes = CreateUserRes
  { name :: String
  , job :: String
  , id :: String
  , createdAt :: String
  }
derive instance genericCreateUserRes :: Generic CreateUserRes _
instance decodeCreateUserRes :: Decode CreateUserRes where decode = genericDecode (defaultOptions { unwrapSingleConstructors = true })
instance showCreateUserRes :: Show CreateUserRes where show = genericShow

-- | Axios instance for CreateUser API
instance axiosCreateUserReq :: Axios CreateUserReq CreateUserRes where axios = genericAxios

data SingleUserReq = SingleUserReq {}
derive instance genericSingleUserReq :: Generic SingleUserReq _
instance decodeSingleUserReq :: Encode SingleUserReq where encode = genericEncode (defaultOptions { unwrapSingleConstructors = true })

newtype SingleUserRes = SingleUserRes
  { data :: 
    { id :: Int
    , email :: String
    , first_name :: String
    , last_name :: String
    , avatar :: String
    }
  }
derive instance genericSingleUserRes :: Generic SingleUserRes _
instance decodeSingleUserRes :: Decode SingleUserRes where decode = genericDecode (defaultOptions { unwrapSingleConstructors = true })
instance showSingleUserRes :: Show SingleUserRes where show = genericShow

-- | Axios instance for SingleUser API
instance axiosSingleUserReq :: Axios SingleUserReq SingleUserRes where axios = genericAxios

newtype UpdateUserReq = UpdateUserReq
  { name :: String
  , job :: String
  }
derive instance genericUpdateUserReq :: Generic UpdateUserReq _
instance decodeUpdateUserReq :: Encode UpdateUserReq where encode = genericEncode (defaultOptions { unwrapSingleConstructors = true })

newtype UpdateUserRes = UpdateUserRes
  { name :: String
  , job :: String
  , updatedAt :: String
  }
derive instance genericUpdateUserRes :: Generic UpdateUserRes _
instance decodeUpdateUserRes :: Decode UpdateUserRes where decode = genericDecode (defaultOptions { unwrapSingleConstructors = true })
instance showUpdateUserRes :: Show UpdateUserRes where show = genericShow

-- | Axios instance for UpdateUser API
instance axiosUpdateUserReq :: Axios UpdateUserReq UpdateUserRes where axios = genericAxios

data DeleteUserReq = DeleteUserReq {}
derive instance genericDeleteUserReq :: Generic DeleteUserReq _
instance decodeDeleteUserReq :: Encode DeleteUserReq where encode = genericEncode (defaultOptions { unwrapSingleConstructors = true })

newtype DeleteUserRes = DeleteUserRes String
derive instance genericDeleteUserRes :: Generic DeleteUserRes _
instance decodeDeleteUserRes :: Decode DeleteUserRes where decode = genericDecode (defaultOptions { unwrapSingleConstructors = true })
instance showDeleteUserRes :: Show DeleteUserRes where show = genericShow

-- | Axios instance for DeleteUser API
instance axiosDeleteUserReq :: Axios DeleteUserReq DeleteUserRes where axios = genericAxios