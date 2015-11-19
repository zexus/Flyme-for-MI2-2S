.class public Lcom/miui/internal/content/res/ThemeFallback;
.super Ljava/lang/Object;
.source "ThemeFallback.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"


# instance fields
.field public mFallbackInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/content/res/ThemeFallback;->mFallbackInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method public static parseThemeFallback(Landroid/content/res/MiuiResources;Ljava/io/InputStream;Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeFallback;
    .locals 21
    .param p0, "resource"    # Landroid/content/res/MiuiResources;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "defPkgName"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v15, Lcom/miui/internal/content/res/ThemeFallback;

    invoke-direct {v15}, Lcom/miui/internal/content/res/ThemeFallback;-><init>()V

    .line 44
    .local v15, "ret":Lcom/miui/internal/content/res/ThemeFallback;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    .line 45
    .local v9, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 46
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v19, Ljava/io/BufferedInputStream;

    const/16 v20, 0x2000

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 47
    .local v4, "document":Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v16

    .line 48
    .local v16, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 49
    .local v11, "list":Lorg/w3c/dom/NodeList;
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    add-int/lit8 v10, v19, -0x1

    .local v10, "index":I
    :goto_0
    if-ltz v10, :cond_3

    .line 50
    invoke-interface {v11, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    .line 51
    .local v17, "temp":Lorg/w3c/dom/Node;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 49
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 53
    :cond_1
    move-object/from16 v0, v17

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v6, v0

    .line 54
    .local v6, "element":Lorg/w3c/dom/Element;
    const-string v19, "name"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 55
    .local v12, "name":Ljava/lang/String;
    invoke-static {v12}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 57
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, "elementName":Ljava/lang/String;
    invoke-static {v7}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->getType(Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    move-result-object v14

    .line 59
    .local v14, "resType":Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    sget-object v19, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->NONE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    move-object/from16 v0, v19

    if-eq v14, v0, :cond_0

    .line 61
    const-string v19, "package"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 62
    .local v13, "pkg":Ljava/lang/String;
    invoke-static {v13}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 63
    move-object/from16 v13, p2

    .line 66
    :cond_2
    sget-object v19, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    move-object/from16 v0, v19

    if-ne v14, v0, :cond_0

    .line 67
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v18

    .line 68
    .local v18, "value":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 69
    new-instance v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    invoke-direct {v8}, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;-><init>()V

    .line 70
    .local v8, "f":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    move-object/from16 v0, p2

    iput-object v0, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPkgName:Ljava/lang/String;

    .line 71
    sget-object v19, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    move-object/from16 v0, v19

    iput-object v0, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    .line 72
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    .line 73
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackName:Ljava/lang/String;

    .line 74
    iput-object v13, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackPkgName:Ljava/lang/String;

    .line 75
    iget-object v0, v15, Lcom/miui/internal/content/res/ThemeFallback;->mFallbackInfoMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    iget-object v0, v8, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 79
    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .end local v6    # "element":Lorg/w3c/dom/Element;
    .end local v7    # "elementName":Ljava/lang/String;
    .end local v8    # "f":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    .end local v9    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10    # "index":I
    .end local v11    # "list":Lorg/w3c/dom/NodeList;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "resType":Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .end local v16    # "rootElement":Lorg/w3c/dom/Element;
    .end local v17    # "temp":Lorg/w3c/dom/Node;
    .end local v18    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 80
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 84
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v15

    .line 82
    .restart local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "document":Lorg/w3c/dom/Document;
    .restart local v9    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v10    # "index":I
    .restart local v11    # "list":Lorg/w3c/dom/NodeList;
    .restart local v16    # "rootElement":Lorg/w3c/dom/Element;
    :cond_3
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .end local v9    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10    # "index":I
    .end local v11    # "list":Lorg/w3c/dom/NodeList;
    .end local v16    # "rootElement":Lorg/w3c/dom/Element;
    :catchall_0
    move-exception v19

    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v19
.end method
