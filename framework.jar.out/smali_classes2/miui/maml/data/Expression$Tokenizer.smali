.class Lmiui/maml/data/Expression$Tokenizer;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tokenizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Expression$Tokenizer$Token;,
        Lmiui/maml/data/Expression$Tokenizer$TokenType;
    }
.end annotation


# static fields
.field private static final BRACKET_MODE_NONE:I = 0x0

.field private static final BRACKET_MODE_ROUND:I = 0x1

.field private static final BRACKET_MODE_SQUARE:I = 0x2


# instance fields
.field private mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

.field private mPos:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Lmiui/maml/data/Expression$OpeInfo$Parser;

    invoke-direct {v0}, Lmiui/maml/data/Expression$OpeInfo$Parser;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/Expression$Tokenizer;->mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

    .line 167
    iput-object p1, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lmiui/maml/data/Expression$Tokenizer;->reset()V

    .line 169
    return-void
.end method


# virtual methods
.method public getToken()Lmiui/maml/data/Expression$Tokenizer$Token;
    .locals 23

    .prologue
    .line 181
    const/4 v6, 0x0

    .line 182
    .local v6, "bracketCount":I
    const/4 v8, -0x1

    .line 184
    .local v8, "bracketStart":I
    const/4 v7, 0x0

    .line 185
    .local v7, "bracketMode":I
    const/4 v4, 0x0

    .local v4, "bracket1":C
    const/4 v5, 0x0

    .line 186
    .local v5, "bracket2":C
    sget-object v17, Lmiui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    .line 189
    .local v17, "type":Lmiui/maml/data/Expression$Tokenizer$TokenType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v13

    .line 190
    .local v13, "len":I
    move-object/from16 v0, p0

    iget v11, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .local v11, "i":I
    :goto_0
    if-ge v11, v13, :cond_19

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 192
    .local v9, "c":C
    if-nez v7, :cond_a

    .line 193
    const/16 v18, 0x23

    move/from16 v0, v18

    if-eq v9, v0, :cond_0

    const/16 v18, 0x40

    move/from16 v0, v18

    if-ne v9, v0, :cond_5

    .line 196
    :cond_0
    add-int/lit8 v12, v11, 0x1

    .local v12, "j":I
    :goto_1
    if-ge v12, v13, :cond_1

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v18

    # invokes: Lmiui/maml/data/Expression;->isVariableChar(C)Z
    invoke-static/range {v18 .. v18}, Lmiui/maml/data/Expression;->access$200(C)Z

    move-result v18

    if-nez v18, :cond_2

    .line 200
    :cond_1
    add-int/lit8 v18, v11, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_3

    .line 201
    const-string v18, "Expression"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "invalid variable name:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/16 v18, 0x0

    .line 288
    .end local v9    # "c":C
    .end local v12    # "j":I
    :goto_2
    return-object v18

    .line 196
    .restart local v9    # "c":C
    .restart local v12    # "j":I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 204
    :cond_3
    move-object/from16 v0, p0

    iput v12, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 205
    new-instance v19, Lmiui/maml/data/Expression$Tokenizer$Token;

    const/16 v18, 0x23

    move/from16 v0, v18

    if-ne v9, v0, :cond_4

    sget-object v18, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer;Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    move-object/from16 v18, v19

    goto :goto_2

    :cond_4
    sget-object v18, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    goto :goto_3

    .line 206
    .end local v12    # "j":I
    :cond_5
    const/16 v18, 0x27

    move/from16 v0, v18

    if-ne v9, v0, :cond_9

    .line 209
    const/16 v16, 0x0

    .line 210
    .local v16, "slash":Z
    add-int/lit8 v12, v11, 0x1

    .restart local v12    # "j":I
    :goto_4
    if-ge v12, v13, :cond_6

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 212
    .local v10, "cc":C
    if-nez v16, :cond_7

    const/16 v18, 0x27

    move/from16 v0, v18

    if-ne v10, v0, :cond_7

    .line 216
    .end local v10    # "cc":C
    :cond_6
    add-int/lit8 v18, v12, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 217
    new-instance v18, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v19, Lmiui/maml/data/Expression$Tokenizer$TokenType;->STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v20, v0

    add-int/lit8 v21, v11, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const-string v21, "\\\'"

    const-string v22, "\'"

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer;Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 214
    .restart local v10    # "cc":C
    :cond_7
    const/16 v18, 0x5c

    move/from16 v0, v18

    if-ne v10, v0, :cond_8

    const/16 v16, 0x1

    .line 210
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 214
    :cond_8
    const/16 v16, 0x0

    goto :goto_5

    .line 218
    .end local v10    # "cc":C
    .end local v12    # "j":I
    .end local v16    # "slash":Z
    :cond_9
    const/16 v18, 0x28

    move/from16 v0, v18

    if-ne v9, v0, :cond_d

    .line 219
    const/4 v7, 0x1

    .line 258
    :cond_a
    :goto_6
    if-eqz v7, :cond_c

    .line 259
    if-nez v6, :cond_b

    .line 260
    packed-switch v7, :pswitch_data_0

    .line 272
    :goto_7
    add-int/lit8 v8, v11, 0x1

    .line 274
    :cond_b
    if-ne v9, v4, :cond_18

    .line 275
    add-int/lit8 v6, v6, 0x1

    .line 190
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 220
    :cond_d
    const/16 v18, 0x5b

    move/from16 v0, v18

    if-ne v9, v0, :cond_e

    .line 221
    const/4 v7, 0x2

    goto :goto_6

    .line 222
    :cond_e
    # invokes: Lmiui/maml/data/Expression;->isDigitChar(C)Z
    invoke-static {v9}, Lmiui/maml/data/Expression;->access$300(C)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 224
    add-int/lit8 v12, v11, 0x1

    .line 225
    .restart local v12    # "j":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    if-ge v12, v13, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x78

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 226
    add-int/lit8 v12, v12, 0x1

    .line 229
    :cond_f
    :goto_8
    if-ge v12, v13, :cond_10

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v18

    # invokes: Lmiui/maml/data/Expression;->isDigitChar(C)Z
    invoke-static/range {v18 .. v18}, Lmiui/maml/data/Expression;->access$300(C)Z

    move-result v18

    if-nez v18, :cond_11

    .line 233
    :cond_10
    move-object/from16 v0, p0

    iput v12, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 234
    new-instance v18, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v19, Lmiui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer;Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 229
    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 235
    .end local v12    # "j":I
    :cond_12
    # invokes: Lmiui/maml/data/Expression;->isFunctionCharStart(C)Z
    invoke-static {v9}, Lmiui/maml/data/Expression;->access$400(C)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 238
    add-int/lit8 v12, v11, 0x1

    .restart local v12    # "j":I
    :goto_9
    if-ge v12, v13, :cond_13

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v18

    # invokes: Lmiui/maml/data/Expression;->isFunctionCharRest(C)Z
    invoke-static/range {v18 .. v18}, Lmiui/maml/data/Expression;->access$500(C)Z

    move-result v18

    if-nez v18, :cond_14

    .line 242
    :cond_13
    move-object/from16 v0, p0

    iput v12, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 243
    new-instance v18, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v19, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer;Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 238
    :cond_14
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 244
    .end local v12    # "j":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Lmiui/maml/data/Expression$OpeInfo$Parser;->accept(CZ)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 245
    add-int/lit8 v15, v11, 0x1

    .line 246
    .local v15, "pos":I
    :goto_a
    if-ge v15, v13, :cond_16

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lmiui/maml/data/Expression$OpeInfo$Parser;->accept(CZ)Z

    move-result v18

    if-nez v18, :cond_17

    .line 250
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmiui/maml/data/Expression$OpeInfo$Parser;->getMatch()Lmiui/maml/data/Expression$Ope;

    move-result-object v14

    .line 251
    .local v14, "ope":Lmiui/maml/data/Expression$Ope;
    sget-object v18, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v0, v18

    if-eq v14, v0, :cond_a

    .line 252
    move-object/from16 v0, p0

    iput v15, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 253
    new-instance v18, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v19, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v14}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer;Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;Lmiui/maml/data/Expression$Ope;)V

    goto/16 :goto_2

    .line 246
    .end local v14    # "ope":Lmiui/maml/data/Expression$Ope;
    :cond_17
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 262
    .end local v15    # "pos":I
    :pswitch_0
    const/16 v4, 0x28

    .line 263
    const/16 v5, 0x29

    .line 264
    sget-object v17, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    .line 265
    goto/16 :goto_7

    .line 267
    :pswitch_1
    const/16 v4, 0x5b

    .line 268
    const/16 v5, 0x5d

    .line 269
    sget-object v17, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_SQUARE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    goto/16 :goto_7

    .line 276
    :cond_18
    if-ne v9, v5, :cond_c

    .line 277
    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_c

    .line 278
    add-int/lit8 v18, v11, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 279
    new-instance v18, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer;Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 285
    .end local v9    # "c":C
    :cond_19
    if-eqz v6, :cond_1a

    .line 286
    const-string v18, "Expression"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mismatched bracket:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    .line 173
    return-void
.end method
