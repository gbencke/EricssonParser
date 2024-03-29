
// Generated from Json.g4 by ANTLR 4.7.2


#include "JsonListener.h"

#include "JsonParser.h"


using namespace antlrcpp;
using namespace antlr4;

JsonParser::JsonParser(TokenStream *input) : Parser(input) {
  _interpreter = new atn::ParserATNSimulator(this, _atn, _decisionToDFA, _sharedContextCache);
}

JsonParser::~JsonParser() {
  delete _interpreter;
}

std::string JsonParser::getGrammarFileName() const {
  return "Json.g4";
}

const std::vector<std::string>& JsonParser::getRuleNames() const {
  return _ruleNames;
}

dfa::Vocabulary& JsonParser::getVocabulary() const {
  return _vocabulary;
}


//----------------- JsonContext ------------------------------------------------------------------

JsonParser::JsonContext::JsonContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

JsonParser::ValueContext* JsonParser::JsonContext::value() {
  return getRuleContext<JsonParser::ValueContext>(0);
}


size_t JsonParser::JsonContext::getRuleIndex() const {
  return JsonParser::RuleJson;
}

void JsonParser::JsonContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<JsonListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterJson(this);
}

void JsonParser::JsonContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<JsonListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitJson(this);
}

JsonParser::JsonContext* JsonParser::json() {
  JsonContext *_localctx = _tracker.createInstance<JsonContext>(_ctx, getState());
  enterRule(_localctx, 0, JsonParser::RuleJson);

  auto onExit = finally([=] {
    exitRule();
  });
  try {
    enterOuterAlt(_localctx, 1);
    setState(10);
    value();
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- ObjContext ------------------------------------------------------------------

JsonParser::ObjContext::ObjContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<JsonParser::PairContext *> JsonParser::ObjContext::pair() {
  return getRuleContexts<JsonParser::PairContext>();
}

JsonParser::PairContext* JsonParser::ObjContext::pair(size_t i) {
  return getRuleContext<JsonParser::PairContext>(i);
}


size_t JsonParser::ObjContext::getRuleIndex() const {
  return JsonParser::RuleObj;
}

void JsonParser::ObjContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<JsonListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterObj(this);
}

void JsonParser::ObjContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<JsonListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitObj(this);
}

JsonParser::ObjContext* JsonParser::obj() {
  ObjContext *_localctx = _tracker.createInstance<ObjContext>(_ctx, getState());
  enterRule(_localctx, 2, JsonParser::RuleObj);
  size_t _la = 0;

  auto onExit = finally([=] {
    exitRule();
  });
  try {
    setState(25);
    _errHandler->sync(this);
    switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 1, _ctx)) {
    case 1: {
      enterOuterAlt(_localctx, 1);
      setState(12);
      match(JsonParser::T__0);
      setState(13);
      pair();
      setState(18);
      _errHandler->sync(this);
      _la = _input->LA(1);
      while (_la == JsonParser::T__1) {
        setState(14);
        match(JsonParser::T__1);
        setState(15);
        pair();
        setState(20);
        _errHandler->sync(this);
        _la = _input->LA(1);
      }
      setState(21);
      match(JsonParser::T__2);
      break;
    }

    case 2: {
      enterOuterAlt(_localctx, 2);
      setState(23);
      match(JsonParser::T__0);
      setState(24);
      match(JsonParser::T__2);
      break;
    }

    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- PairContext ------------------------------------------------------------------

JsonParser::PairContext::PairContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<tree::TerminalNode *> JsonParser::PairContext::IDENTIFIER() {
  return getTokens(JsonParser::IDENTIFIER);
}

tree::TerminalNode* JsonParser::PairContext::IDENTIFIER(size_t i) {
  return getToken(JsonParser::IDENTIFIER, i);
}

JsonParser::ValueContext* JsonParser::PairContext::value() {
  return getRuleContext<JsonParser::ValueContext>(0);
}


size_t JsonParser::PairContext::getRuleIndex() const {
  return JsonParser::RulePair;
}

void JsonParser::PairContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<JsonListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterPair(this);
}

void JsonParser::PairContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<JsonListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitPair(this);
}

JsonParser::PairContext* JsonParser::pair() {
  PairContext *_localctx = _tracker.createInstance<PairContext>(_ctx, getState());
  enterRule(_localctx, 4, JsonParser::RulePair);

  auto onExit = finally([=] {
    exitRule();
  });
  try {
    setState(33);
    _errHandler->sync(this);
    switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 2, _ctx)) {
    case 1: {
      enterOuterAlt(_localctx, 1);
      setState(27);
      match(JsonParser::IDENTIFIER);
      setState(28);
      match(JsonParser::T__3);
      setState(29);
      value();
      break;
    }

    case 2: {
      enterOuterAlt(_localctx, 2);
      setState(30);
      match(JsonParser::IDENTIFIER);
      setState(31);
      match(JsonParser::T__3);
      setState(32);
      match(JsonParser::IDENTIFIER);
      break;
    }

    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- ArrayContext ------------------------------------------------------------------

JsonParser::ArrayContext::ArrayContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

std::vector<JsonParser::ValueContext *> JsonParser::ArrayContext::value() {
  return getRuleContexts<JsonParser::ValueContext>();
}

JsonParser::ValueContext* JsonParser::ArrayContext::value(size_t i) {
  return getRuleContext<JsonParser::ValueContext>(i);
}

std::vector<tree::TerminalNode *> JsonParser::ArrayContext::IDENTIFIER() {
  return getTokens(JsonParser::IDENTIFIER);
}

tree::TerminalNode* JsonParser::ArrayContext::IDENTIFIER(size_t i) {
  return getToken(JsonParser::IDENTIFIER, i);
}


size_t JsonParser::ArrayContext::getRuleIndex() const {
  return JsonParser::RuleArray;
}

void JsonParser::ArrayContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<JsonListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterArray(this);
}

void JsonParser::ArrayContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<JsonListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitArray(this);
}

JsonParser::ArrayContext* JsonParser::array() {
  ArrayContext *_localctx = _tracker.createInstance<ArrayContext>(_ctx, getState());
  enterRule(_localctx, 6, JsonParser::RuleArray);
  size_t _la = 0;

  auto onExit = finally([=] {
    exitRule();
  });
  try {
    setState(58);
    _errHandler->sync(this);
    switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 5, _ctx)) {
    case 1: {
      enterOuterAlt(_localctx, 1);
      setState(35);
      match(JsonParser::T__4);
      setState(36);
      value();
      setState(41);
      _errHandler->sync(this);
      _la = _input->LA(1);
      while (_la == JsonParser::T__1) {
        setState(37);
        match(JsonParser::T__1);
        setState(38);
        value();
        setState(43);
        _errHandler->sync(this);
        _la = _input->LA(1);
      }
      setState(44);
      match(JsonParser::T__5);
      break;
    }

    case 2: {
      enterOuterAlt(_localctx, 2);
      setState(46);
      match(JsonParser::T__4);
      setState(47);
      match(JsonParser::IDENTIFIER);
      setState(52);
      _errHandler->sync(this);
      _la = _input->LA(1);
      while (_la == JsonParser::T__1) {
        setState(48);
        match(JsonParser::T__1);
        setState(49);
        match(JsonParser::IDENTIFIER);
        setState(54);
        _errHandler->sync(this);
        _la = _input->LA(1);
      }
      setState(55);
      match(JsonParser::T__5);
      break;
    }

    case 3: {
      enterOuterAlt(_localctx, 3);
      setState(56);
      match(JsonParser::T__4);
      setState(57);
      match(JsonParser::T__5);
      break;
    }

    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

//----------------- ValueContext ------------------------------------------------------------------

JsonParser::ValueContext::ValueContext(ParserRuleContext *parent, size_t invokingState)
  : ParserRuleContext(parent, invokingState) {
}

tree::TerminalNode* JsonParser::ValueContext::STRING() {
  return getToken(JsonParser::STRING, 0);
}

tree::TerminalNode* JsonParser::ValueContext::NUMBER() {
  return getToken(JsonParser::NUMBER, 0);
}

JsonParser::ObjContext* JsonParser::ValueContext::obj() {
  return getRuleContext<JsonParser::ObjContext>(0);
}

JsonParser::ArrayContext* JsonParser::ValueContext::array() {
  return getRuleContext<JsonParser::ArrayContext>(0);
}


size_t JsonParser::ValueContext::getRuleIndex() const {
  return JsonParser::RuleValue;
}

void JsonParser::ValueContext::enterRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<JsonListener *>(listener);
  if (parserListener != nullptr)
    parserListener->enterValue(this);
}

void JsonParser::ValueContext::exitRule(tree::ParseTreeListener *listener) {
  auto parserListener = dynamic_cast<JsonListener *>(listener);
  if (parserListener != nullptr)
    parserListener->exitValue(this);
}

JsonParser::ValueContext* JsonParser::value() {
  ValueContext *_localctx = _tracker.createInstance<ValueContext>(_ctx, getState());
  enterRule(_localctx, 8, JsonParser::RuleValue);

  auto onExit = finally([=] {
    exitRule();
  });
  try {
    setState(67);
    _errHandler->sync(this);
    switch (_input->LA(1)) {
      case JsonParser::STRING: {
        enterOuterAlt(_localctx, 1);
        setState(60);
        match(JsonParser::STRING);
        break;
      }

      case JsonParser::NUMBER: {
        enterOuterAlt(_localctx, 2);
        setState(61);
        match(JsonParser::NUMBER);
        break;
      }

      case JsonParser::T__0: {
        enterOuterAlt(_localctx, 3);
        setState(62);
        obj();
        break;
      }

      case JsonParser::T__4: {
        enterOuterAlt(_localctx, 4);
        setState(63);
        array();
        break;
      }

      case JsonParser::T__6: {
        enterOuterAlt(_localctx, 5);
        setState(64);
        match(JsonParser::T__6);
        break;
      }

      case JsonParser::T__7: {
        enterOuterAlt(_localctx, 6);
        setState(65);
        match(JsonParser::T__7);
        break;
      }

      case JsonParser::T__8: {
        enterOuterAlt(_localctx, 7);
        setState(66);
        match(JsonParser::T__8);
        break;
      }

    default:
      throw NoViableAltException(this);
    }
   
  }
  catch (RecognitionException &e) {
    _errHandler->reportError(this, e);
    _localctx->exception = std::current_exception();
    _errHandler->recover(this, _localctx->exception);
  }

  return _localctx;
}

// Static vars and initialization.
std::vector<dfa::DFA> JsonParser::_decisionToDFA;
atn::PredictionContextCache JsonParser::_sharedContextCache;

// We own the ATN which in turn owns the ATN states.
atn::ATN JsonParser::_atn;
std::vector<uint16_t> JsonParser::_serializedATN;

std::vector<std::string> JsonParser::_ruleNames = {
  "json", "obj", "pair", "array", "value"
};

std::vector<std::string> JsonParser::_literalNames = {
  "", "'{'", "','", "'}'", "'='", "'['", "']'", "'true'", "'false'", "'null'"
};

std::vector<std::string> JsonParser::_symbolicNames = {
  "", "", "", "", "", "", "", "", "", "", "IDENTIFIER", "STRING", "NUMBER", 
  "WS"
};

dfa::Vocabulary JsonParser::_vocabulary(_literalNames, _symbolicNames);

std::vector<std::string> JsonParser::_tokenNames;

JsonParser::Initializer::Initializer() {
	for (size_t i = 0; i < _symbolicNames.size(); ++i) {
		std::string name = _vocabulary.getLiteralName(i);
		if (name.empty()) {
			name = _vocabulary.getSymbolicName(i);
		}

		if (name.empty()) {
			_tokenNames.push_back("<INVALID>");
		} else {
      _tokenNames.push_back(name);
    }
	}

  _serializedATN = {
    0x3, 0x608b, 0xa72a, 0x8133, 0xb9ed, 0x417c, 0x3be7, 0x7786, 0x5964, 
    0x3, 0xf, 0x48, 0x4, 0x2, 0x9, 0x2, 0x4, 0x3, 0x9, 0x3, 0x4, 0x4, 0x9, 
    0x4, 0x4, 0x5, 0x9, 0x5, 0x4, 0x6, 0x9, 0x6, 0x3, 0x2, 0x3, 0x2, 0x3, 
    0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x7, 0x3, 0x13, 0xa, 0x3, 0xc, 0x3, 
    0xe, 0x3, 0x16, 0xb, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x5, 
    0x3, 0x1c, 0xa, 0x3, 0x3, 0x4, 0x3, 0x4, 0x3, 0x4, 0x3, 0x4, 0x3, 0x4, 
    0x3, 0x4, 0x5, 0x4, 0x24, 0xa, 0x4, 0x3, 0x5, 0x3, 0x5, 0x3, 0x5, 0x3, 
    0x5, 0x7, 0x5, 0x2a, 0xa, 0x5, 0xc, 0x5, 0xe, 0x5, 0x2d, 0xb, 0x5, 0x3, 
    0x5, 0x3, 0x5, 0x3, 0x5, 0x3, 0x5, 0x3, 0x5, 0x3, 0x5, 0x7, 0x5, 0x35, 
    0xa, 0x5, 0xc, 0x5, 0xe, 0x5, 0x38, 0xb, 0x5, 0x3, 0x5, 0x3, 0x5, 0x3, 
    0x5, 0x5, 0x5, 0x3d, 0xa, 0x5, 0x3, 0x6, 0x3, 0x6, 0x3, 0x6, 0x3, 0x6, 
    0x3, 0x6, 0x3, 0x6, 0x3, 0x6, 0x5, 0x6, 0x46, 0xa, 0x6, 0x3, 0x6, 0x2, 
    0x2, 0x7, 0x2, 0x4, 0x6, 0x8, 0xa, 0x2, 0x2, 0x2, 0x4f, 0x2, 0xc, 0x3, 
    0x2, 0x2, 0x2, 0x4, 0x1b, 0x3, 0x2, 0x2, 0x2, 0x6, 0x23, 0x3, 0x2, 0x2, 
    0x2, 0x8, 0x3c, 0x3, 0x2, 0x2, 0x2, 0xa, 0x45, 0x3, 0x2, 0x2, 0x2, 0xc, 
    0xd, 0x5, 0xa, 0x6, 0x2, 0xd, 0x3, 0x3, 0x2, 0x2, 0x2, 0xe, 0xf, 0x7, 
    0x3, 0x2, 0x2, 0xf, 0x14, 0x5, 0x6, 0x4, 0x2, 0x10, 0x11, 0x7, 0x4, 
    0x2, 0x2, 0x11, 0x13, 0x5, 0x6, 0x4, 0x2, 0x12, 0x10, 0x3, 0x2, 0x2, 
    0x2, 0x13, 0x16, 0x3, 0x2, 0x2, 0x2, 0x14, 0x12, 0x3, 0x2, 0x2, 0x2, 
    0x14, 0x15, 0x3, 0x2, 0x2, 0x2, 0x15, 0x17, 0x3, 0x2, 0x2, 0x2, 0x16, 
    0x14, 0x3, 0x2, 0x2, 0x2, 0x17, 0x18, 0x7, 0x5, 0x2, 0x2, 0x18, 0x1c, 
    0x3, 0x2, 0x2, 0x2, 0x19, 0x1a, 0x7, 0x3, 0x2, 0x2, 0x1a, 0x1c, 0x7, 
    0x5, 0x2, 0x2, 0x1b, 0xe, 0x3, 0x2, 0x2, 0x2, 0x1b, 0x19, 0x3, 0x2, 
    0x2, 0x2, 0x1c, 0x5, 0x3, 0x2, 0x2, 0x2, 0x1d, 0x1e, 0x7, 0xc, 0x2, 
    0x2, 0x1e, 0x1f, 0x7, 0x6, 0x2, 0x2, 0x1f, 0x24, 0x5, 0xa, 0x6, 0x2, 
    0x20, 0x21, 0x7, 0xc, 0x2, 0x2, 0x21, 0x22, 0x7, 0x6, 0x2, 0x2, 0x22, 
    0x24, 0x7, 0xc, 0x2, 0x2, 0x23, 0x1d, 0x3, 0x2, 0x2, 0x2, 0x23, 0x20, 
    0x3, 0x2, 0x2, 0x2, 0x24, 0x7, 0x3, 0x2, 0x2, 0x2, 0x25, 0x26, 0x7, 
    0x7, 0x2, 0x2, 0x26, 0x2b, 0x5, 0xa, 0x6, 0x2, 0x27, 0x28, 0x7, 0x4, 
    0x2, 0x2, 0x28, 0x2a, 0x5, 0xa, 0x6, 0x2, 0x29, 0x27, 0x3, 0x2, 0x2, 
    0x2, 0x2a, 0x2d, 0x3, 0x2, 0x2, 0x2, 0x2b, 0x29, 0x3, 0x2, 0x2, 0x2, 
    0x2b, 0x2c, 0x3, 0x2, 0x2, 0x2, 0x2c, 0x2e, 0x3, 0x2, 0x2, 0x2, 0x2d, 
    0x2b, 0x3, 0x2, 0x2, 0x2, 0x2e, 0x2f, 0x7, 0x8, 0x2, 0x2, 0x2f, 0x3d, 
    0x3, 0x2, 0x2, 0x2, 0x30, 0x31, 0x7, 0x7, 0x2, 0x2, 0x31, 0x36, 0x7, 
    0xc, 0x2, 0x2, 0x32, 0x33, 0x7, 0x4, 0x2, 0x2, 0x33, 0x35, 0x7, 0xc, 
    0x2, 0x2, 0x34, 0x32, 0x3, 0x2, 0x2, 0x2, 0x35, 0x38, 0x3, 0x2, 0x2, 
    0x2, 0x36, 0x34, 0x3, 0x2, 0x2, 0x2, 0x36, 0x37, 0x3, 0x2, 0x2, 0x2, 
    0x37, 0x39, 0x3, 0x2, 0x2, 0x2, 0x38, 0x36, 0x3, 0x2, 0x2, 0x2, 0x39, 
    0x3d, 0x7, 0x8, 0x2, 0x2, 0x3a, 0x3b, 0x7, 0x7, 0x2, 0x2, 0x3b, 0x3d, 
    0x7, 0x8, 0x2, 0x2, 0x3c, 0x25, 0x3, 0x2, 0x2, 0x2, 0x3c, 0x30, 0x3, 
    0x2, 0x2, 0x2, 0x3c, 0x3a, 0x3, 0x2, 0x2, 0x2, 0x3d, 0x9, 0x3, 0x2, 
    0x2, 0x2, 0x3e, 0x46, 0x7, 0xd, 0x2, 0x2, 0x3f, 0x46, 0x7, 0xe, 0x2, 
    0x2, 0x40, 0x46, 0x5, 0x4, 0x3, 0x2, 0x41, 0x46, 0x5, 0x8, 0x5, 0x2, 
    0x42, 0x46, 0x7, 0x9, 0x2, 0x2, 0x43, 0x46, 0x7, 0xa, 0x2, 0x2, 0x44, 
    0x46, 0x7, 0xb, 0x2, 0x2, 0x45, 0x3e, 0x3, 0x2, 0x2, 0x2, 0x45, 0x3f, 
    0x3, 0x2, 0x2, 0x2, 0x45, 0x40, 0x3, 0x2, 0x2, 0x2, 0x45, 0x41, 0x3, 
    0x2, 0x2, 0x2, 0x45, 0x42, 0x3, 0x2, 0x2, 0x2, 0x45, 0x43, 0x3, 0x2, 
    0x2, 0x2, 0x45, 0x44, 0x3, 0x2, 0x2, 0x2, 0x46, 0xb, 0x3, 0x2, 0x2, 
    0x2, 0x9, 0x14, 0x1b, 0x23, 0x2b, 0x36, 0x3c, 0x45, 
  };

  atn::ATNDeserializer deserializer;
  _atn = deserializer.deserialize(_serializedATN);

  size_t count = _atn.getNumberOfDecisions();
  _decisionToDFA.reserve(count);
  for (size_t i = 0; i < count; i++) { 
    _decisionToDFA.emplace_back(_atn.getDecisionState(i), i);
  }
}

JsonParser::Initializer JsonParser::_init;
