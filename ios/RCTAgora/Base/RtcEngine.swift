//
//  RtcEngine.swift
//  RCTAgora
//
//  Created by LXH on 2020/4/13.
//  Copyright (c) 2020 Syan. All rights reserved.
//

import Foundation
import AgoraRtcKit

protocol RtcEngineInterface:
        RtcEngineUserInfoInterface,
        RtcEngineAudioInterface,
        RtcEngineVideoInterface,
        RtcEngineAudioMixingInterface,
        RtcEngineAudioEffectInterface,
        RtcEngineVoiceChangerInterface,
        RtcEngineVoicePositionInterface,
        RtcEnginePublishStreamInterface,
        RtcEngineMediaRelayInterface,
        RtcEngineAudioRouteInterface,
        RtcEngineEarMonitoringInterface,
        RtcEngineDualStreamInterface,
        RtcEngineFallbackInterface,
        RtcEngineTestInterface,
        RtcEngineMediaMetadataInterface,
        RtcEngineWatermarkInterface,
        RtcEngineEncryptionInterface,
        RtcEngineAudioRecorderInterface,
        RtcEngineInjectStreamInterface,
        RtcEngineCameraInterface,
        RtcEngineStreamMessageInterface {
    func create(_ params: NSDictionary, _ callback: Callback)

    func destroy(_ callback: Callback)

    func setChannelProfile(_ params: NSDictionary, _ callback: Callback)

    func setClientRole(_ params: NSDictionary, _ callback: Callback)

    func joinChannel(_ params: NSDictionary, _ callback: Callback)

    func switchChannel(_ params: NSDictionary, _ callback: Callback)

    func leaveChannel(_ callback: Callback)

    func renewToken(_ params: NSDictionary, _ callback: Callback)

    @available(*, deprecated)
    func enableWebSdkInteroperability(_ params: NSDictionary, _ callback: Callback)

    func getConnectionState(_ callback: Callback)

    func sendCustomReportMessage(_ params: NSDictionary, _ callback: Callback)

    func getCallId(_ callback: Callback)

    func rate(_ params: NSDictionary, _ callback: Callback)

    func complain(_ params: NSDictionary, _ callback: Callback)

    @available(*, deprecated)
    func setLogFile(_ params: NSDictionary, _ callback: Callback)

    @available(*, deprecated)
    func setLogFilter(_ params: NSDictionary, _ callback: Callback)

    @available(*, deprecated)
    func setLogFileSize(_ params: NSDictionary, _ callback: Callback)

    func setParameters(_ params: NSDictionary, _ callback: Callback)
    
    func getSdkVersion(callback: Callback)

    func getErrorDescription(_ params: NSDictionary, callback: Callback)

    func getNativeHandle(_ callback: Callback)
    
    func enableDeepLearningDenoise(_ params: NSDictionary, callback: Callback)

    func setCloudProxy(_ params: NSDictionary, callback: Callback)

    func uploadLogFile(callback: Callback)
}

protocol RtcEngineUserInfoInterface {
    func registerLocalUserAccount(_ params: NSDictionary, _ callback: Callback)

    func joinChannelWithUserAccount(_ params: NSDictionary, _ callback: Callback)

    func getUserInfoByUserAccount(_ params: NSDictionary, _ callback: Callback)

    func getUserInfoByUid(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineAudioInterface {
    func enableAudio(_ callback: Callback)

    func disableAudio(_ callback: Callback)

    func setAudioProfile(_ params: NSDictionary, _ callback: Callback)

    func adjustRecordingSignalVolume(_ params: NSDictionary, _ callback: Callback)

    func adjustUserPlaybackSignalVolume(_ params: NSDictionary, _ callback: Callback)

    func adjustPlaybackSignalVolume(_ params: NSDictionary, _ callback: Callback)

    func enableLocalAudio(_ params: NSDictionary, _ callback: Callback)

    func muteLocalAudioStream(_ params: NSDictionary, _ callback: Callback)

    func muteRemoteAudioStream(_ params: NSDictionary, _ callback: Callback)

    func muteAllRemoteAudioStreams(_ params: NSDictionary, _ callback: Callback)

    @available(*, deprecated)
    func setDefaultMuteAllRemoteAudioStreams(_ params: NSDictionary, _ callback: Callback)

    func enableAudioVolumeIndication(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineVideoInterface {
    func enableVideo(_ callback: Callback)

    func disableVideo(_ callback: Callback)

    func setVideoEncoderConfiguration(_ params: NSDictionary, _ callback: Callback)

    func startPreview(_ callback: Callback)

    func stopPreview(_ callback: Callback)

    func enableLocalVideo(_ params: NSDictionary, _ callback: Callback)

    func muteLocalVideoStream(_ params: NSDictionary, _ callback: Callback)

    func muteRemoteVideoStream(_ params: NSDictionary, _ callback: Callback)

    func muteAllRemoteVideoStreams(_ params: NSDictionary, _ callback: Callback)

    @available(*, deprecated)
    func setDefaultMuteAllRemoteVideoStreams(_ params: NSDictionary, _ callback: Callback)

    func setBeautyEffectOptions(_ params: NSDictionary, _ callback: Callback)
    
    func enableRemoteSuperResolution(_ params: NSDictionary, callback: Callback)
}

protocol RtcEngineAudioMixingInterface {
    func startAudioMixing(_ params: NSDictionary, _ callback: Callback)

    func stopAudioMixing(_ callback: Callback)

    func pauseAudioMixing(_ callback: Callback)

    func resumeAudioMixing(_ callback: Callback)

    func adjustAudioMixingVolume(_ params: NSDictionary, _ callback: Callback)

    func adjustAudioMixingPlayoutVolume(_ params: NSDictionary, _ callback: Callback)

    func adjustAudioMixingPublishVolume(_ params: NSDictionary, _ callback: Callback)

    func getAudioMixingPlayoutVolume(_ callback: Callback)

    func getAudioMixingPublishVolume(_ callback: Callback)

    func getAudioMixingDuration(_ callback: Callback)

    func getAudioMixingCurrentPosition(_ callback: Callback)

    func setAudioMixingPosition(_ params: NSDictionary, _ callback: Callback)

    func setAudioMixingPitch(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineAudioEffectInterface {
    func getEffectsVolume(_ callback: Callback)

    func setEffectsVolume(_ params: NSDictionary, _ callback: Callback)

    func setVolumeOfEffect(_ params: NSDictionary, _ callback: Callback)

    func playEffect(_ params: NSDictionary, _ callback: Callback)

    func stopEffect(_ params: NSDictionary, _ callback: Callback)

    func stopAllEffects(_ callback: Callback)

    func preloadEffect(_ params: NSDictionary, _ callback: Callback)

    func unloadEffect(_ params: NSDictionary, _ callback: Callback)

    func pauseEffect(_ params: NSDictionary, _ callback: Callback)

    func pauseAllEffects(_ callback: Callback)

    func resumeEffect(_ params: NSDictionary, _ callback: Callback)

    func resumeAllEffects(_ callback: Callback)

    func setAudioSessionOperationRestriction(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineVoiceChangerInterface {
    @available(*, deprecated)
    func setLocalVoiceChanger(_ params: NSDictionary, _ callback: Callback)

    @available(*, deprecated)
    func setLocalVoiceReverbPreset(_ params: NSDictionary, _ callback: Callback)

    func setLocalVoicePitch(_ params: NSDictionary, _ callback: Callback)

    func setLocalVoiceEqualization(_ params: NSDictionary, _ callback: Callback)

    func setLocalVoiceReverb(_ params: NSDictionary, _ callback: Callback)
    
    func setAudioEffectPreset(_ params: NSDictionary, _ callback: Callback)

    func setVoiceBeautifierPreset(_ params: NSDictionary, _ callback: Callback)
    
    func setVoiceConversionPreset(_ params: NSDictionary, _ callback: Callback)

    func setAudioEffectParameters(_ params: NSDictionary, _ callback: Callback)
    
    func setVoiceBeautifierParameters(_ params: NSDictionary, callback: Callback)
}

protocol RtcEngineVoicePositionInterface {
    func enableSoundPositionIndication(_ params: NSDictionary, _ callback: Callback)

    func setRemoteVoicePosition(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEnginePublishStreamInterface {
    func setLiveTranscoding(_ params: NSDictionary, _ callback: Callback)

    func addPublishStreamUrl(_ params: NSDictionary, _ callback: Callback)

    func removePublishStreamUrl(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineMediaRelayInterface {
    func startChannelMediaRelay(_ params: NSDictionary, _ callback: Callback)

    func updateChannelMediaRelay(_ params: NSDictionary, _ callback: Callback)

    func stopChannelMediaRelay(_ callback: Callback)
}

protocol RtcEngineAudioRouteInterface {
    func setDefaultAudioRoutetoSpeakerphone(_ params: NSDictionary, _ callback: Callback)

    func setEnableSpeakerphone(_ params: NSDictionary, _ callback: Callback)

    func isSpeakerphoneEnabled(_ callback: Callback)
}

protocol RtcEngineEarMonitoringInterface {
    func enableInEarMonitoring(_ params: NSDictionary, _ callback: Callback)

    func setInEarMonitoringVolume(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineDualStreamInterface {
    func enableDualStreamMode(_ params: NSDictionary, _ callback: Callback)

    func setRemoteVideoStreamType(_ params: NSDictionary, _ callback: Callback)

    func setRemoteDefaultVideoStreamType(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineFallbackInterface {
    func setLocalPublishFallbackOption(_ params: NSDictionary, _ callback: Callback)

    func setRemoteSubscribeFallbackOption(_ params: NSDictionary, _ callback: Callback)

    func setRemoteUserPriority(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineTestInterface {
    func startEchoTest(_ params: NSDictionary, _ callback: Callback)

    func stopEchoTest(_ callback: Callback)

    func enableLastmileTest(_ callback: Callback)

    func disableLastmileTest(_ callback: Callback)

    func startLastmileProbeTest(_ params: NSDictionary, _ callback: Callback)

    func stopLastmileProbeTest(_ callback: Callback)
}

protocol RtcEngineMediaMetadataInterface {
    func registerMediaMetadataObserver(_ callback: Callback)

    func unregisterMediaMetadataObserver(_ callback: Callback)

    func setMaxMetadataSize(_ params: NSDictionary, _ callback: Callback)

    func sendMetadata(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineWatermarkInterface {
    func addVideoWatermark(_ params: NSDictionary, _ callback: Callback)

    func clearVideoWatermarks(_ callback: Callback)
}

protocol RtcEngineEncryptionInterface {
    @available(*, deprecated)
    func setEncryptionSecret(_ params: NSDictionary, _ callback: Callback)

    @available(*, deprecated)
    func setEncryptionMode(_ params: NSDictionary, _ callback: Callback)

    func enableEncryption(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineAudioRecorderInterface {
    func startAudioRecording(_ params: NSDictionary, _ callback: Callback)

    func stopAudioRecording(_ callback: Callback)
}

protocol RtcEngineInjectStreamInterface {
    func addInjectStreamUrl(_ params: NSDictionary, _ callback: Callback)

    func removeInjectStreamUrl(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineCameraInterface {
    func switchCamera(_ callback: Callback)

    func isCameraZoomSupported(_ callback: Callback)

    func isCameraTorchSupported(_ callback: Callback)

    func isCameraFocusSupported(_ callback: Callback)

    func isCameraExposurePositionSupported(_ callback: Callback)

    func isCameraAutoFocusFaceModeSupported(_ callback: Callback)

    func setCameraZoomFactor(_ params: NSDictionary, _ callback: Callback)

    func getCameraMaxZoomFactor(_ callback: Callback)

    func setCameraFocusPositionInPreview(_ params: NSDictionary, _ callback: Callback)

    func setCameraExposurePosition(_ params: NSDictionary, _ callback: Callback)

    func enableFaceDetection(_ params: NSDictionary, _ callback: Callback)

    func setCameraTorchOn(_ params: NSDictionary, _ callback: Callback)

    func setCameraAutoFocusFaceModeEnabled(_ params: NSDictionary, _ callback: Callback)

    func setCameraCapturerConfiguration(_ params: NSDictionary, _ callback: Callback)
}

protocol RtcEngineStreamMessageInterface {
    func createDataStream(_ params: NSDictionary, _ callback: Callback)

    func sendStreamMessage(_ params: NSDictionary, _ callback: Callback)
}

@objc
class RtcEngineManager: NSObject, RtcEngineInterface {
    private var emitter: (_ methodName: String, _ data: Dictionary<String, Any?>?) -> Void
    private(set) var engine: AgoraRtcEngineKit?
    private var delegate: RtcEngineEventHandler?
    private var mediaObserver: MediaObserver?
    let group = DispatchGroup();
    private var enableVideoWorkItem: DispatchWorkItem?

    init(_ emitter: @escaping (_ methodName: String, _ data: Dictionary<String, Any?>?) -> Void) {
        self.emitter = emitter
    }

    func Release() {
        AgoraRtcEngineKit.destroy()
        engine = nil
        delegate = nil
        mediaObserver = nil
    }

    @objc func create(_ params: NSDictionary, _ callback: Callback) {
        group.enter();
        delegate = RtcEngineEventHandler() { [weak self] in
            self?.emitter($0, $1)
        }
        engine = AgoraRtcEngineKit.sharedEngine(with: mapToRtcEngineConfig(params["config"] as! Dictionary), delegate: delegate)
        callback.code(self.engine?.setAppType(AgoraRtcAppType(rawValue: (params["appType"] as! NSNumber).uintValue)!))
    }

    @objc func destroy(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).async {
            self.group.leave()
            self.enableVideoWorkItem?.cancel()
            callback.resolve(self.engine) { [weak self] _ in
                self?.Release()
        }
        }
//        callback.resolve(engine) { [weak self] _ in
//            self?.Release()
    }

    @objc func setChannelProfile(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setChannelProfile(AgoraChannelProfile(rawValue: (params["profile"] as! NSNumber).intValue)!))
               }
    }

    @objc func setClientRole(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            let role = AgoraClientRole(rawValue: (params["role"] as! NSNumber).intValue)!
            if let options = params["options"] as? Dictionary<String, Any> {
                callback.code(self.engine?.setClientRole(role, options: mapToClientRoleOptions(options)))
                return
            }
            callback.code(self.engine?.setClientRole(role))
               }
    }

    @objc func joinChannel(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            let token = params["token"] as? String
            let channelName = params["channelName"] as! String
            let optionalInfo = params["optionalInfo"] as? String
            let optionalUid = params["optionalUid"] as! NSNumber
            if let options = params["options"] as? Dictionary<String, Any> {
                callback.code(self.engine?.joinChannel(byToken: token, channelId: channelName, info: optionalInfo, uid: optionalUid.uintValue, options: mapToChannelMediaOptions(options)))
                return
            }
            callback.code(self.engine?.joinChannel(byToken: token, channelId: channelName, info: optionalInfo, uid: optionalUid.uintValue))
               }
    }

    @objc func switchChannel(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            let token = params["token"] as? String
            let channelName = params["channelName"] as! String
            if let options = params["options"] as? Dictionary<String, Any> {
                callback.code(self.engine?.switchChannel(byToken: token, channelId: channelName, options: mapToChannelMediaOptions(options)))
                return
            }
            callback.code(self.engine?.switchChannel(byToken: token, channelId: channelName))
               }
    }

    @objc func leaveChannel(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.leaveChannel())
               }
    }

    @objc func renewToken(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.renewToken(params["token"] as! String))
               }
    }

    @objc func enableWebSdkInteroperability(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.enableWebSdkInteroperability(params["enabled"] as! Bool))
               }
    }

    @objc func getConnectionState(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.resolve(engine) {
                $0.getConnectionState().rawValue
            }
        }
    }

    @objc func sendCustomReportMessage(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.sendCustomReportMessage(params["id"] as! String, category: params["category"] as! String, event: params["event"] as! String, label: params["label"] as! String, value: (params["value"] as! NSNumber).intValue))
        }
    }

    @objc func getCallId(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.resolve(engine) {
                $0.getCallId()
            }
        }
    }

    @objc func rate(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.rate(params["callId"] as! String, rating: (params["rating"] as! NSNumber).intValue, description: params["description"] as? String))
        }
    }

    @objc func complain(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.complain(params["callId"] as! String, description: params["description"] as? String))
        }
    }

    @objc func setLogFile(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setLogFile(params["filePath"] as! String))
        }
    }

    @objc func setLogFilter(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setLogFilter((params["filter"] as! NSNumber).uintValue))
        }
    }

    @objc func setLogFileSize(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setLogFileSize((params["fileSizeInKBytes"] as! NSNumber).uintValue))
        }
    }

    @objc func getNativeHandle(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.resolve(engine) {
                Int(bitPattern: $0.getNativeHandle())
            }
        }
    }

    @objc func setParameters(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setParameters(params["parameters"] as! String))
        }
    }

    @objc func registerLocalUserAccount(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.registerLocalUserAccount(params["userAccount"] as! String, appId: params["appId"] as! String))
        }
    }

    @objc func joinChannelWithUserAccount(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            let userAccount = params["userAccount"] as! String
            let token = params["token"] as? String
            let channelName = params["channelName"] as! String
            if let options = params["options"] as? Dictionary<String, Any> {
                callback.code(self.engine?.joinChannel(byUserAccount: userAccount, token: token, channelId: channelName, options: mapToChannelMediaOptions(options)))
                return
            }
            callback.code(self.engine?.joinChannel(byUserAccount: userAccount, token: token, channelId: channelName))
        }
    }

    @objc func getUserInfoByUserAccount(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.resolve(engine) {
                $0.getUserInfo(byUserAccount: params["userAccount"] as! String, withError: nil)?.toMap()
            }
        }
    }

    @objc func getUserInfoByUid(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.resolve(engine) {
                $0.getUserInfo(byUid: (params["uid"] as! NSNumber).uintValue, withError: nil)?.toMap()
            }
        }
    }

    @objc func enableAudio(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.enableAudio())
        }
    }

    @objc func disableAudio(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.disableAudio())
        }
    }

    @objc func setAudioProfile(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setAudioProfile(AgoraAudioProfile(rawValue: (params["profile"] as! NSNumber).intValue)!, scenario: AgoraAudioScenario(rawValue: (params["scenario"] as! NSNumber).intValue)!))
        }
    }

    @objc func adjustRecordingSignalVolume(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.adjustRecordingSignalVolume((params["volume"] as! NSNumber).intValue))
        }
    }

    @objc func adjustUserPlaybackSignalVolume(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.adjustUserPlaybackSignalVolume((params["uid"] as! NSNumber).uintValue, volume: (params["volume"] as! NSNumber).int32Value))
        }
    }

    @objc func adjustPlaybackSignalVolume(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.adjustPlaybackSignalVolume((params["volume"] as! NSNumber).intValue))
        }
    }

    @objc func enableLocalAudio(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.enableLocalAudio(params["enabled"] as! Bool))
        }
    }

    @objc func muteLocalAudioStream(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.muteLocalAudioStream(params["muted"] as! Bool))
        }
    }

    @objc func muteRemoteAudioStream(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.muteRemoteAudioStream((params["uid"] as! NSNumber).uintValue, mute: params["muted"] as! Bool))
        }
    }

    @objc func muteAllRemoteAudioStreams(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.muteAllRemoteAudioStreams(params["muted"] as! Bool))
        }
    }

    @objc func setDefaultMuteAllRemoteAudioStreams(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setDefaultMuteAllRemoteAudioStreams(params["muted"] as! Bool))
        }
    }

    @objc func enableAudioVolumeIndication(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.enableAudioVolumeIndication((params["interval"] as! NSNumber).intValue, smooth: (params["smooth"] as! NSNumber).intValue, report_vad: params["report_vad"] as! Bool))
        }
    }

    @objc func enableVideo(_ callback: Callback) {
        enableVideoWorkItem = DispatchWorkItem {
            callback.code(self.engine?.enableVideo())
        }
    }

    @objc func disableVideo(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.disableVideo())
        }
    }

    @objc func setVideoEncoderConfiguration(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setVideoEncoderConfiguration(mapToVideoEncoderConfiguration(params["config"] as! Dictionary)))
        }
    }

    @objc func startPreview(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.startPreview())
        }
    }

    @objc func stopPreview(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.stopPreview())
        }
    }

    @objc func enableLocalVideo(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.enableLocalVideo(params["enabled"] as! Bool))
        }
    }

    @objc func muteLocalVideoStream(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.muteLocalVideoStream(params["muted"] as! Bool))
        }
    }

    @objc func muteRemoteVideoStream(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.muteRemoteVideoStream((params["uid"] as! NSNumber).uintValue, mute: params["muted"] as! Bool))
        }
    }

    @objc func muteAllRemoteVideoStreams(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.muteAllRemoteVideoStreams(params["muted"] as! Bool))
        }
    }

    @objc func setDefaultMuteAllRemoteVideoStreams(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setDefaultMuteAllRemoteVideoStreams(params["muted"] as! Bool))
        }
    }

    @objc func setBeautyEffectOptions(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setBeautyEffectOptions(params["enabled"] as! Bool, options: mapToBeautyOptions(params["options"] as! Dictionary)))
        }
    }

    @objc func startAudioMixing(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.startAudioMixing(params["filePath"] as! String, loopback: params["loopback"] as! Bool, replace: params["replace"] as! Bool, cycle: (params["cycle"] as! NSNumber).intValue))
        }
    }

    @objc func stopAudioMixing(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.stopAudioMixing())
        }
    }

    @objc func pauseAudioMixing(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.pauseAudioMixing())
        }
    }

    @objc func resumeAudioMixing(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.resumeAudioMixing())
        }
    }

    @objc func adjustAudioMixingVolume(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.adjustAudioMixingVolume((params["volume"] as! NSNumber).intValue))
        }
    }

    @objc func adjustAudioMixingPlayoutVolume(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.adjustAudioMixingPlayoutVolume((params["volume"] as! NSNumber).intValue))
        }
    }

    @objc func adjustAudioMixingPublishVolume(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.adjustAudioMixingPublishVolume((params["volume"] as! NSNumber).intValue))
        }
    }

    @objc func getAudioMixingPlayoutVolume(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.getAudioMixingPlayoutVolume()) {
                $0
            }
        }
    }

    @objc func getAudioMixingPublishVolume(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.getAudioMixingPublishVolume()) {
                $0
            }
        }
    }

    @objc func getAudioMixingDuration(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.getAudioMixingDuration()) {
                $0
            }
        }
    }

    @objc func getAudioMixingCurrentPosition(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.getAudioMixingCurrentPosition()) {
                $0
            }
        }
    }

    @objc func setAudioMixingPosition(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setAudioMixingPosition((params["pos"] as! NSNumber).intValue))
        }
    }

    @objc func setAudioMixingPitch(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setAudioMixingPitch((params["pitch"] as! NSNumber).intValue))
        }
    }

    @objc func getEffectsVolume(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.resolve(engine) {
                $0.getEffectsVolume()
            }
        }
    }

    @objc func setEffectsVolume(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setEffectsVolume((params["volume"] as! NSNumber).doubleValue))
        }
    }

    @objc func setVolumeOfEffect(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setVolumeOfEffect((params["soundId"] as! NSNumber).int32Value, withVolume: (params["volume"] as! NSNumber).doubleValue))
        }
    }

    @objc func playEffect(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.playEffect((params["soundId"] as! NSNumber).int32Value, filePath: params["filePath"] as? String, loopCount: (params["loopCount"] as! NSNumber).int32Value, pitch: (params["pitch"] as! NSNumber).doubleValue, pan: (params["pan"] as! NSNumber).doubleValue, gain: (params["gain"] as! NSNumber).doubleValue, publish: params["publish"] as! Bool))
        }
    }

    @objc func stopEffect(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.stopEffect((params["soundId"] as! NSNumber).int32Value))
        }
    }

    @objc func stopAllEffects(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.stopAllEffects())
        }
    }

    @objc func preloadEffect(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.preloadEffect((params["soundId"] as! NSNumber).int32Value, filePath: params["filePath"] as? String))
        }
    }

    @objc func unloadEffect(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.unloadEffect((params["soundId"] as! NSNumber).int32Value))
        }
    }

    @objc func pauseEffect(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.pauseEffect((params["soundId"] as! NSNumber).int32Value))
        }
    }

    @objc func pauseAllEffects(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.pauseAllEffects())
        }
    }

    @objc func resumeEffect(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.resumeEffect((params["soundId"] as! NSNumber).int32Value))
        }
    }

    @objc func resumeAllEffects(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.resumeAllEffects())
        }
    }

    @objc func setAudioSessionOperationRestriction(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.resolve(engine) {
                $0.setAudioSessionOperationRestriction(AgoraAudioSessionOperationRestriction(rawValue: (params["restriction"] as! NSNumber).uintValue))
            }
        }
    }

    @objc func setLocalVoiceChanger(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setLocalVoiceChanger(AgoraAudioVoiceChanger(rawValue: (params["voiceChanger"] as! NSNumber).intValue)!))
        }
    }

    @objc func setLocalVoiceReverbPreset(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setLocalVoiceReverbPreset(AgoraAudioReverbPreset(rawValue: (params["preset"] as! NSNumber).intValue)!))
        }
    }

    @objc func setLocalVoicePitch(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setLocalVoicePitch((params["pitch"] as! NSNumber).doubleValue))
        }
    }

    @objc func setLocalVoiceEqualization(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setLocalVoiceEqualizationOf(AgoraAudioEqualizationBandFrequency(rawValue: (params["bandFrequency"] as! NSNumber).intValue)!, withGain: (params["bandGain"] as! NSNumber).intValue))
        }
    }

    @objc func setLocalVoiceReverb(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setLocalVoiceReverbOf(AgoraAudioReverbType(rawValue: (params["reverbKey"] as! NSNumber).intValue)!, withValue: (params["value"] as! NSNumber).intValue))
        }
    }
    
    @objc func setAudioEffectPreset(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setAudioEffectPreset(AgoraAudioEffectPreset(rawValue: (params["preset"] as! NSNumber).intValue)!))
        }
    }
    
    @objc func setVoiceBeautifierPreset(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setVoiceBeautifierPreset(AgoraVoiceBeautifierPreset(rawValue: (params["preset"] as! NSNumber).intValue)!))
        }
    }
    
    @objc func setVoiceConversionPreset(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setVoiceConversionPreset(AgoraVoiceConversionPreset(rawValue: (params["preset"] as! NSNumber).intValue)!))
        }
    }
    
    @objc func setAudioEffectParameters(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setAudioEffectParameters(AgoraAudioEffectPreset(rawValue: (params["preset"] as! NSNumber).intValue)!, param1: (params["param1"] as! NSNumber).int32Value, param2: (params["param2"] as! NSNumber).int32Value))
        }
    }

    @objc func enableSoundPositionIndication(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.enableSoundPositionIndication(params["enabled"] as! Bool))
        }
    }

    @objc func setRemoteVoicePosition(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setRemoteVoicePosition((params["uid"] as! NSNumber).uintValue, pan: (params["pan"] as! NSNumber).doubleValue, gain: (params["gain"] as! NSNumber).doubleValue))
        }
    }

    @objc func setLiveTranscoding(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setLiveTranscoding(mapToLiveTranscoding(params["transcoding"] as! Dictionary)))
        }
    }

    @objc func addPublishStreamUrl(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.addPublishStreamUrl(params["url"] as! String, transcodingEnabled: params["transcodingEnabled"] as! Bool))
        }
    }

    @objc func removePublishStreamUrl(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.removePublishStreamUrl(params["url"] as! String))
        }
    }

    @objc func startChannelMediaRelay(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.startChannelMediaRelay(mapToChannelMediaRelayConfiguration(params["channelMediaRelayConfiguration"] as! Dictionary)))
        }
    }

    @objc func updateChannelMediaRelay(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.updateChannelMediaRelay(mapToChannelMediaRelayConfiguration(params["channelMediaRelayConfiguration"] as! Dictionary)))
        }
    }

    @objc func stopChannelMediaRelay(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.stopChannelMediaRelay())
        }
    }

    @objc func setDefaultAudioRoutetoSpeakerphone(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setDefaultAudioRouteToSpeakerphone(params["defaultToSpeaker"] as! Bool))
        }
    }

    @objc func setEnableSpeakerphone(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setEnableSpeakerphone(params["enabled"] as! Bool))
        }
    }

    @objc func isSpeakerphoneEnabled(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.resolve(engine) {
                $0.isSpeakerphoneEnabled()
            }
        }
    }

    @objc func enableInEarMonitoring(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.enable(inEarMonitoring: params["enabled"] as! Bool))
        }
    }

    @objc func setInEarMonitoringVolume(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setInEarMonitoringVolume((params["volume"] as! NSNumber).intValue))
        }
    }

    @objc func enableDualStreamMode(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.enableDualStreamMode(params["enabled"] as! Bool))
        }
    }

    @objc func setRemoteVideoStreamType(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setRemoteVideoStream((params["uid"] as! NSNumber).uintValue, type: AgoraVideoStreamType(rawValue: (params["streamType"] as! NSNumber).intValue)!))
        }
    }

    @objc func setRemoteDefaultVideoStreamType(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setRemoteDefaultVideoStreamType(AgoraVideoStreamType(rawValue: (params["streamType"] as! NSNumber).intValue)!))
        }
    }

    @objc func setLocalPublishFallbackOption(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setLocalPublishFallbackOption(AgoraStreamFallbackOptions(rawValue: (params["option"] as! NSNumber).intValue)!))
        }
    }

    @objc func setRemoteSubscribeFallbackOption(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setRemoteSubscribeFallbackOption(AgoraStreamFallbackOptions(rawValue: (params["option"] as! NSNumber).intValue)!))
        }
    }

    @objc func setRemoteUserPriority(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setRemoteUserPriority((params["uid"] as! NSNumber).uintValue, type: AgoraUserPriority(rawValue: (params["userPriority"] as! NSNumber).intValue)!))
        }
    }

    @objc func startEchoTest(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.startEchoTest(withInterval: (params["intervalInSeconds"] as! NSNumber).intValue))
        }
    }

    @objc func stopEchoTest(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.stopEchoTest())
        }
    }

    @objc func enableLastmileTest(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.enableLastmileTest())
        }
    }

    @objc func disableLastmileTest(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.disableLastmileTest())
        }
    }

    @objc func startLastmileProbeTest(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.startLastmileProbeTest(mapToLastmileProbeConfig(params["config"] as! Dictionary)))
        }
    }

    @objc func stopLastmileProbeTest(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.stopLastmileProbeTest())
        }
    }

    @objc func registerMediaMetadataObserver(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            let mediaObserver = MediaObserver { [weak self] in
                self?.emitter(RtcEngineEvents.MetadataReceived, $0)
            }
            callback.resolve(engine) {
                if $0.setMediaMetadataDelegate(mediaObserver, with: .video) {
                    self.mediaObserver = mediaObserver
                }
                return nil
            }
        }
    }

    @objc func unregisterMediaMetadataObserver(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.resolve(engine) {
                if $0.setMediaMetadataDelegate(nil, with: .video) {
                    self.mediaObserver = nil
                }
                return nil
            }
        }
    }

    @objc func setMaxMetadataSize(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.resolve(mediaObserver) {
                $0.setMaxMetadataSize((params["size"] as! NSNumber).intValue)
            }
        }
    }

    @objc func sendMetadata(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.resolve(mediaObserver) {
                $0.addMetadata(params["metadata"] as! String)
            }
        }
    }

    @objc func addVideoWatermark(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.addVideoWatermark(URL(string: params["watermarkUrl"] as! String)!, options: mapToWatermarkOptions(params["options"] as! Dictionary)))
        }
    }

    @objc func clearVideoWatermarks(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.clearVideoWatermarks())
        }
    }

    @objc func setEncryptionSecret(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setEncryptionSecret(params["secret"] as? String))
        }
    }

    @objc func setEncryptionMode(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            var encryptionMode = ""
            switch (params["encryptionMode"] as! NSNumber).intValue {
            case AgoraEncryptionMode.AES128XTS.rawValue:
                encryptionMode = "aes-128-xts"
            case AgoraEncryptionMode.AES128ECB.rawValue:
                encryptionMode = "aes-128-ecb"
            case AgoraEncryptionMode.AES256XTS.rawValue:
                encryptionMode = "aes-256-xts"
            default: encryptionMode = ""
            }
            callback.code(self.engine?.setEncryptionMode(encryptionMode))
        }
    }

    @objc func enableEncryption(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.enableEncryption(params["enabled"] as! Bool, encryptionConfig: mapToEncryptionConfig(params["config"] as! Dictionary)))
        }
    }

    @objc func startAudioRecording(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.startAudioRecording(params["filePath"] as! String, sampleRate: (params["sampleRate"] as! NSNumber).intValue, quality: AgoraAudioRecordingQuality(rawValue: (params["quality"] as! NSNumber).intValue)!))
        }
    }

    @objc func stopAudioRecording(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.stopAudioRecording())
        }
    }

    @objc func addInjectStreamUrl(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.addInjectStreamUrl(params["url"] as! String, config: mapToLiveInjectStreamConfig(params["config"] as! Dictionary)))
        }
    }

    @objc func removeInjectStreamUrl(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.removeInjectStreamUrl(params["url"] as! String))
        }
    }

    @objc func switchCamera(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.switchCamera())
        }
    }

    @objc func isCameraZoomSupported(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.resolve(engine) {
                $0.isCameraZoomSupported()
            }
        }
    }

    @objc func isCameraTorchSupported(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.resolve(engine) {
                $0.isCameraTorchSupported()
            }
        }
    }

    @objc func isCameraFocusSupported(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(-Int32(AgoraErrorCode.notSupported.rawValue))
        }
    }

    @objc func isCameraExposurePositionSupported(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.resolve(engine) {
                $0.isCameraExposurePositionSupported()
            }
        }
    }

    @objc func isCameraAutoFocusFaceModeSupported(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.resolve(engine) {
                $0.isCameraAutoFocusFaceModeSupported()
            }
        }
    }

    @objc func setCameraZoomFactor(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.resolve(engine) {
                $0.setCameraZoomFactor(CGFloat(truncating: params["factor"] as! NSNumber))
                return nil
            }
        }
    }

    @objc func getCameraMaxZoomFactor(_ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(-Int32(AgoraErrorCode.notSupported.rawValue))
        }
    }

    @objc func setCameraFocusPositionInPreview(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.resolve(engine) {
                $0.setCameraFocusPositionInPreview(CGPoint(x: (params["positionX"] as! NSNumber).doubleValue, y: (params["positionY"] as! NSNumber).doubleValue))
                return nil
            }
        }
    }

    @objc func setCameraExposurePosition(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
        callback.resolve(engine) {
                $0.setCameraExposurePosition(CGPoint(x: (params["positionXinView"] as! NSNumber).doubleValue, y: (params["positionYinView"] as! NSNumber).doubleValue))
                return nil
            }
        }
    }

    @objc func enableFaceDetection(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.enableFaceDetection(params["enable"] as! Bool))
        }
    }

    @objc func setCameraTorchOn(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.resolve(engine) {
                $0.setCameraTorchOn(params["isOn"] as! Bool)
                return nil
            }
        }
    }

    @objc func setCameraAutoFocusFaceModeEnabled(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.resolve(engine) {
                $0.setCameraAutoFocusFaceModeEnabled(params["enabled"] as! Bool)
            }
        }
    }

    @objc func setCameraCapturerConfiguration(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setCameraCapturerConfiguration(mapToCameraCapturerConfiguration(params["config"] as! Dictionary)))
        }
    }

    @objc func createDataStream(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            var streamId = 0
            if let config = params["config"] as? Dictionary<String, Any> {
                callback.code(self.engine?.createDataStream(&streamId, config: mapToDataStreamConfig(config))) { _ in streamId }
                return
            }
            callback.code(self.engine?.createDataStream(&streamId, reliable: params["reliable"] as! Bool, ordered: params["ordered"] as! Bool)) { _ in streamId }
        }
    }

    @objc func sendStreamMessage(_ params: NSDictionary, _ callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.sendStreamMessage((params["streamId"] as! NSNumber).intValue, data: (params["message"] as! String).data(using: .utf8)!))
        }
    }
    
    @objc func setVoiceBeautifierParameters(_ params: NSDictionary, callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setVoiceBeautifierParameters(AgoraVoiceBeautifierPreset.init(rawValue: (params["preset"] as! NSNumber).intValue)!, param1: (params["param1"] as! NSNumber).int32Value, param2: (params["param2"] as! NSNumber).int32Value))
        }
    }
    
    @objc func getSdkVersion(callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.success(AgoraRtcEngineKit.getSdkVersion())
        }
    }
    
    @objc func getErrorDescription(_ params: NSDictionary, callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.success(AgoraRtcEngineKit.getErrorDescription((params["code"] as! NSNumber).intValue))
        }
    }
    
    @objc func enableDeepLearningDenoise(_ params: NSDictionary, callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.enableDeepLearningDenoise(params["enabled"] as! Bool))
        }
    }
    
    @objc func setCloudProxy(_ params: NSDictionary, callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.setCloudProxy(AgoraCloudProxyType.init(rawValue: (params["proxyType"] as! NSNumber).uintValue)!))
        }
    }
    
    @objc func uploadLogFile(callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.resolve(engine) {
                return $0.uploadLogFile()
            }
        }
    }
    
    @objc func enableRemoteSuperResolution(_ params: NSDictionary, callback: Callback) {
        DispatchQueue(label: "rn-agora-thread",qos: .userInteractive).sync {
            callback.code(self.engine?.enableRemoteSuperResolution((params["uid"] as! NSNumber).uintValue, enabled: params["enabled"] as! Bool))
        }
    }
}
