
// Generated from Json.g4 by ANTLR 4.7.2

#pragma once


#include "antlr4-runtime.h"
#include "JsonListener.h"


/**
 * This class provides an empty implementation of JsonListener,
 * which can be extended to create a listener which only needs to handle a subset
 * of the available methods.
 */
class  JsonBaseListener : public JsonListener {
public:

  virtual void enterJson(JsonParser::JsonContext * /*ctx*/) override { }
  virtual void exitJson(JsonParser::JsonContext * /*ctx*/) override { }

  virtual void enterObj(JsonParser::ObjContext * /*ctx*/) override { }
  virtual void exitObj(JsonParser::ObjContext * /*ctx*/) override { }

  virtual void enterPair(JsonParser::PairContext * /*ctx*/) override { }
  virtual void exitPair(JsonParser::PairContext * /*ctx*/) override { }

  virtual void enterArray(JsonParser::ArrayContext * /*ctx*/) override { }
  virtual void exitArray(JsonParser::ArrayContext * /*ctx*/) override { }

  virtual void enterValue(JsonParser::ValueContext * /*ctx*/) override { }
  virtual void exitValue(JsonParser::ValueContext * /*ctx*/) override { }


  virtual void enterEveryRule(antlr4::ParserRuleContext * /*ctx*/) override { }
  virtual void exitEveryRule(antlr4::ParserRuleContext * /*ctx*/) override { }
  virtual void visitTerminal(antlr4::tree::TerminalNode * /*node*/) override { }
  virtual void visitErrorNode(antlr4::tree::ErrorNode * /*node*/) override { }

};

