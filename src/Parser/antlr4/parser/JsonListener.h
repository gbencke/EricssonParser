
// Generated from Json.g4 by ANTLR 4.7.2

#pragma once


#include "antlr4-runtime.h"
#include "JsonParser.h"


/**
 * This interface defines an abstract listener for a parse tree produced by JsonParser.
 */
class  JsonListener : public antlr4::tree::ParseTreeListener {
public:

  virtual void enterJson(JsonParser::JsonContext *ctx) = 0;
  virtual void exitJson(JsonParser::JsonContext *ctx) = 0;

  virtual void enterObj(JsonParser::ObjContext *ctx) = 0;
  virtual void exitObj(JsonParser::ObjContext *ctx) = 0;

  virtual void enterPair(JsonParser::PairContext *ctx) = 0;
  virtual void exitPair(JsonParser::PairContext *ctx) = 0;

  virtual void enterArray(JsonParser::ArrayContext *ctx) = 0;
  virtual void exitArray(JsonParser::ArrayContext *ctx) = 0;

  virtual void enterValue(JsonParser::ValueContext *ctx) = 0;
  virtual void exitValue(JsonParser::ValueContext *ctx) = 0;


};

