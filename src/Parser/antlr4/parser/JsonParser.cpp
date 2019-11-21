
// Generated from Json.g4 by ANTLR 4.7.2


#include "JsonVisitor.h"

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


antlrcpp::Any JsonParser::JsonContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<JsonVisitor*>(visitor))
    return parserVisitor->visitJson(this);
  else
    return visitor->visitChildren(this);
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


antlrcpp::Any JsonParser::ObjContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<JsonVisitor*>(visitor))
    return parserVisitor->visitObj(this);
  else
    return visitor->visitChildren(this);
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


antlrcpp::Any JsonParser::PairContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<JsonVisitor*>(visitor))
    return parserVisitor->visitPair(this);
  else
    return visitor->visitChildren(this);
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


size_t JsonParser::ArrayContext::getRuleIndex() const {
  return JsonParser::RuleArray;
}


antlrcpp::Any JsonParser::ArrayContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<JsonVisitor*>(visitor))
    return parserVisitor->visitArray(this);
  else
    return visitor->visitChildren(this);
}

JsonParser::ArrayContext* JsonParser::array() {
  ArrayContext *_localctx = _tracker.createInstance<ArrayContext>(_ctx, getState());
  enterRule(_localctx, 6, JsonParser::RuleArray);
  size_t _la = 0;

  auto onExit = finally([=] {
    exitRule();
  });
  try {
    setState(48);
    _errHandler->sync(this);
    switch (getInterpreter<atn::ParserATNSimulator>()->adaptivePredict(_input, 4, _ctx)) {
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


antlrcpp::Any JsonParser::ValueContext::accept(tree::ParseTreeVisitor *visitor) {
  if (auto parserVisitor = dynamic_cast<JsonVisitor*>(visitor))
    return parserVisitor->visitValue(this);
  else
    return visitor->visitChildren(this);
}

JsonParser::ValueContext* JsonParser::value() {
  ValueContext *_localctx = _tracker.createInstance<ValueContext>(_ctx, getState());
  enterRule(_localctx, 8, JsonParser::RuleValue);

  auto onExit = finally([=] {
    exitRule();
  });
  try {
    setState(57);
    _errHandler->sync(this);
    switch (_input->LA(1)) {
      case JsonParser::STRING: {
        enterOuterAlt(_localctx, 1);
        setState(50);
        match(JsonParser::STRING);
        break;
      }

      case JsonParser::NUMBER: {
        enterOuterAlt(_localctx, 2);
        setState(51);
        match(JsonParser::NUMBER);
        break;
      }

      case JsonParser::T__0: {
        enterOuterAlt(_localctx, 3);
        setState(52);
        obj();
        break;
      }

      case JsonParser::T__4: {
        enterOuterAlt(_localctx, 4);
        setState(53);
        array();
        break;
      }

      case JsonParser::T__6: {
        enterOuterAlt(_localctx, 5);
        setState(54);
        match(JsonParser::T__6);
        break;
      }

      case JsonParser::T__7: {
        enterOuterAlt(_localctx, 6);
        setState(55);
        match(JsonParser::T__7);
        break;
      }

      case JsonParser::T__8: {
        enterOuterAlt(_localctx, 7);
        setState(56);
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
    0x3, 0xf, 0x3e, 0x4, 0x2, 0x9, 0x2, 0x4, 0x3, 0x9, 0x3, 0x4, 0x4, 0x9, 
    0x4, 0x4, 0x5, 0x9, 0x5, 0x4, 0x6, 0x9, 0x6, 0x3, 0x2, 0x3, 0x2, 0x3, 
    0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x7, 0x3, 0x13, 0xa, 0x3, 0xc, 0x3, 
    0xe, 0x3, 0x16, 0xb, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x3, 0x5, 
    0x3, 0x1c, 0xa, 0x3, 0x3, 0x4, 0x3, 0x4, 0x3, 0x4, 0x3, 0x4, 0x3, 0x4, 
    0x3, 0x4, 0x5, 0x4, 0x24, 0xa, 0x4, 0x3, 0x5, 0x3, 0x5, 0x3, 0x5, 0x3, 
    0x5, 0x7, 0x5, 0x2a, 0xa, 0x5, 0xc, 0x5, 0xe, 0x5, 0x2d, 0xb, 0x5, 0x3, 
    0x5, 0x3, 0x5, 0x3, 0x5, 0x3, 0x5, 0x5, 0x5, 0x33, 0xa, 0x5, 0x3, 0x6, 
    0x3, 0x6, 0x3, 0x6, 0x3, 0x6, 0x3, 0x6, 0x3, 0x6, 0x3, 0x6, 0x5, 0x6, 
    0x3c, 0xa, 0x6, 0x3, 0x6, 0x2, 0x2, 0x7, 0x2, 0x4, 0x6, 0x8, 0xa, 0x2, 
    0x2, 0x2, 0x43, 0x2, 0xc, 0x3, 0x2, 0x2, 0x2, 0x4, 0x1b, 0x3, 0x2, 0x2, 
    0x2, 0x6, 0x23, 0x3, 0x2, 0x2, 0x2, 0x8, 0x32, 0x3, 0x2, 0x2, 0x2, 0xa, 
    0x3b, 0x3, 0x2, 0x2, 0x2, 0xc, 0xd, 0x5, 0xa, 0x6, 0x2, 0xd, 0x3, 0x3, 
    0x2, 0x2, 0x2, 0xe, 0xf, 0x7, 0x3, 0x2, 0x2, 0xf, 0x14, 0x5, 0x6, 0x4, 
    0x2, 0x10, 0x11, 0x7, 0x4, 0x2, 0x2, 0x11, 0x13, 0x5, 0x6, 0x4, 0x2, 
    0x12, 0x10, 0x3, 0x2, 0x2, 0x2, 0x13, 0x16, 0x3, 0x2, 0x2, 0x2, 0x14, 
    0x12, 0x3, 0x2, 0x2, 0x2, 0x14, 0x15, 0x3, 0x2, 0x2, 0x2, 0x15, 0x17, 
    0x3, 0x2, 0x2, 0x2, 0x16, 0x14, 0x3, 0x2, 0x2, 0x2, 0x17, 0x18, 0x7, 
    0x5, 0x2, 0x2, 0x18, 0x1c, 0x3, 0x2, 0x2, 0x2, 0x19, 0x1a, 0x7, 0x3, 
    0x2, 0x2, 0x1a, 0x1c, 0x7, 0x5, 0x2, 0x2, 0x1b, 0xe, 0x3, 0x2, 0x2, 
    0x2, 0x1b, 0x19, 0x3, 0x2, 0x2, 0x2, 0x1c, 0x5, 0x3, 0x2, 0x2, 0x2, 
    0x1d, 0x1e, 0x7, 0xc, 0x2, 0x2, 0x1e, 0x1f, 0x7, 0x6, 0x2, 0x2, 0x1f, 
    0x24, 0x5, 0xa, 0x6, 0x2, 0x20, 0x21, 0x7, 0xc, 0x2, 0x2, 0x21, 0x22, 
    0x7, 0x6, 0x2, 0x2, 0x22, 0x24, 0x7, 0xc, 0x2, 0x2, 0x23, 0x1d, 0x3, 
    0x2, 0x2, 0x2, 0x23, 0x20, 0x3, 0x2, 0x2, 0x2, 0x24, 0x7, 0x3, 0x2, 
    0x2, 0x2, 0x25, 0x26, 0x7, 0x7, 0x2, 0x2, 0x26, 0x2b, 0x5, 0xa, 0x6, 
    0x2, 0x27, 0x28, 0x7, 0x4, 0x2, 0x2, 0x28, 0x2a, 0x5, 0xa, 0x6, 0x2, 
    0x29, 0x27, 0x3, 0x2, 0x2, 0x2, 0x2a, 0x2d, 0x3, 0x2, 0x2, 0x2, 0x2b, 
    0x29, 0x3, 0x2, 0x2, 0x2, 0x2b, 0x2c, 0x3, 0x2, 0x2, 0x2, 0x2c, 0x2e, 
    0x3, 0x2, 0x2, 0x2, 0x2d, 0x2b, 0x3, 0x2, 0x2, 0x2, 0x2e, 0x2f, 0x7, 
    0x8, 0x2, 0x2, 0x2f, 0x33, 0x3, 0x2, 0x2, 0x2, 0x30, 0x31, 0x7, 0x7, 
    0x2, 0x2, 0x31, 0x33, 0x7, 0x8, 0x2, 0x2, 0x32, 0x25, 0x3, 0x2, 0x2, 
    0x2, 0x32, 0x30, 0x3, 0x2, 0x2, 0x2, 0x33, 0x9, 0x3, 0x2, 0x2, 0x2, 
    0x34, 0x3c, 0x7, 0xd, 0x2, 0x2, 0x35, 0x3c, 0x7, 0xe, 0x2, 0x2, 0x36, 
    0x3c, 0x5, 0x4, 0x3, 0x2, 0x37, 0x3c, 0x5, 0x8, 0x5, 0x2, 0x38, 0x3c, 
    0x7, 0x9, 0x2, 0x2, 0x39, 0x3c, 0x7, 0xa, 0x2, 0x2, 0x3a, 0x3c, 0x7, 
    0xb, 0x2, 0x2, 0x3b, 0x34, 0x3, 0x2, 0x2, 0x2, 0x3b, 0x35, 0x3, 0x2, 
    0x2, 0x2, 0x3b, 0x36, 0x3, 0x2, 0x2, 0x2, 0x3b, 0x37, 0x3, 0x2, 0x2, 
    0x2, 0x3b, 0x38, 0x3, 0x2, 0x2, 0x2, 0x3b, 0x39, 0x3, 0x2, 0x2, 0x2, 
    0x3b, 0x3a, 0x3, 0x2, 0x2, 0x2, 0x3c, 0xb, 0x3, 0x2, 0x2, 0x2, 0x8, 
    0x14, 0x1b, 0x23, 0x2b, 0x32, 0x3b, 
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
