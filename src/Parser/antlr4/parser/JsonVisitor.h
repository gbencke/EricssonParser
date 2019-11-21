
// Generated from Json.g4 by ANTLR 4.7.2

#pragma once


#include "antlr4-runtime.h"
#include "JsonParser.h"



/**
 * This class defines an abstract visitor for a parse tree
 * produced by JsonParser.
 */
class  JsonVisitor : public antlr4::tree::AbstractParseTreeVisitor {
public:

  /**
   * Visit parse trees produced by JsonParser.
   */
    virtual antlrcpp::Any visitJson(JsonParser::JsonContext *context) = 0;

    virtual antlrcpp::Any visitObj(JsonParser::ObjContext *context) = 0;

    virtual antlrcpp::Any visitPair(JsonParser::PairContext *context) = 0;

    virtual antlrcpp::Any visitArray(JsonParser::ArrayContext *context) = 0;

    virtual antlrcpp::Any visitValue(JsonParser::ValueContext *context) = 0;


};

