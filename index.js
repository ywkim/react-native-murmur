import { NativeModules } from 'react-native';

function _speechManagerCommand(name) {
  return NativeModules.RNMSpeechManager[name];
}

function _runCommand(name, args) {
  return _speechManagerCommand(name)(...args);
}

const Murmur = {
  /**
   * Callback that is called once, when the recognizer is done recognizing the speech.
   */
  onRecognitionComplete: null,

  startRecording() {
    _runCommand('startRecording');
  },
};

export default Murmur;
