
// Generated from Json.g4 by ANTLR 4.7.2

#pragma once


#include "antlr4-runtime.h"
#include "JsonVisitor.h"


/**
 * This class provides an empty implementation of JsonVisitor, which can be
 * extended to create a visitor which only needs to handle a subset of the available methods.
 */
class  JsonBaseVisitor : public JsonVisitor {
public:

  virtual antlrcpp::Any visitJson(JsonParser::JsonContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitObj(JsonParser::ObjContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitPair(JsonParser::PairContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitArray(JsonParser::ArrayContext *ctx) override {
    return visitChildren(ctx);
  }

  virtual antlrcpp::Any visitValue(JsonParser::ValueContext *ctx) override {
    return visitChildren(ctx);
  }


};

