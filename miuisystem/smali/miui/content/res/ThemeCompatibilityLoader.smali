.class public Lmiui/content/res/ThemeCompatibilityLoader;
.super Ljava/lang/Object;
.source "ThemeCompatibilityLoader.java"


# static fields
.field private static final COMPATIBILITY_FILE_NAME:Ljava/lang/String; = "theme_compatibility.xml"

.field public static final DATA_THEME_COMPATIBILITY_PATH:Ljava/lang/String; = "/data/system/theme_config/theme_compatibility.xml"

.field public static final SYSTEM_THEME_COMPATIBILITY_PATH:Ljava/lang/String; = "/system/media/theme/theme_compatibility.xml"

.field private static final TAG:Ljava/lang/String; = "ThemeCompatibility"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PROPERTY1:Ljava/lang/String; = "property1"

.field private static final TAG_PROPERTY2:Ljava/lang/String; = "property2"

.field private static final TAG_PROPERTY3:Ljava/lang/String; = "property3"

.field private static final TAG_PROPERTYEXTRA:Ljava/lang/String; = "propertyExtra"

.field private static final TAG_RESOURCE_TYPE:Ljava/lang/String; = "resourceType"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field private static sVersionInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, -0x1

    sput v0, Lmiui/content/res/ThemeCompatibilityLoader;->sVersionInt:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConfigDocumentTree()Lorg/w3c/dom/Document;
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 127
    const-string v12, "/data/system/theme_config/theme_compatibility.xml"

    invoke-static {v12}, Lmiui/content/res/ThemeCompatibilityLoader;->getVersion(Ljava/lang/String;)I

    move-result v11

    .line 128
    .local v11, "updateVersion":I
    const-string v12, "/system/media/theme/theme_compatibility.xml"

    invoke-static {v12}, Lmiui/content/res/ThemeCompatibilityLoader;->getVersion(Ljava/lang/String;)I

    move-result v10

    .line 130
    .local v10, "romVersion":I
    const/4 v12, 0x2

    new-array v9, v12, [Ljava/lang/String;

    .line 131
    .local v9, "prefPath":[Ljava/lang/String;
    if-le v11, v10, :cond_0

    .line 132
    const-string v12, "/data/system/theme_config/theme_compatibility.xml"

    aput-object v12, v9, v13

    .line 133
    const/4 v12, 0x1

    const-string v13, "/system/media/theme/theme_compatibility.xml"

    aput-object v13, v9, v12

    .line 138
    :goto_0
    const-string v12, "ThemeCompatibility"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getConfigDocumentTree(): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " vs "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v8, v0, v4

    .line 140
    .local v8, "path":Ljava/lang/String;
    const/4 v5, 0x0

    .line 142
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    const-string v12, "ThemeCompatibility"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    parse file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 144
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 145
    .local v1, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x2000

    invoke-direct {v6, v12, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v5    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v12

    .line 151
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 154
    .end local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v8    # "path":Ljava/lang/String;
    :goto_2
    return-object v12

    .line 135
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    :cond_0
    const-string v12, "/system/media/theme/theme_compatibility.xml"

    aput-object v12, v9, v13

    goto :goto_0

    .line 147
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "len$":I
    .restart local v8    # "path":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_2
    const-string v12, "ThemeCompatibility"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    invalid file format: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -- "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 139
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 151
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    :goto_4
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v12

    .line 154
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v8    # "path":Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    goto :goto_2

    .line 151
    .restart local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v8    # "path":Ljava/lang/String;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 147
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public static getVersion(Ljava/lang/String;)I
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, "cin":Ljava/io/BufferedReader;
    :try_start_0
    const-string v5, "<version>"

    .line 108
    .local v5, "sTag":Ljava/lang/String;
    const-string v3, "</version>"

    .line 109
    .local v3, "eTag":Ljava/lang/String;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v0    # "cin":Ljava/io/BufferedReader;
    .local v1, "cin":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 111
    .local v4, "line":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 112
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 113
    const-string v6, "<version>"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "</version>"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 114
    const-string v6, "<version>"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "</version>"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 121
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v0, v1

    .line 123
    .end local v1    # "cin":Ljava/io/BufferedReader;
    .end local v3    # "eTag":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "sTag":Ljava/lang/String;
    .restart local v0    # "cin":Ljava/io/BufferedReader;
    :goto_0
    return v6

    .line 121
    .end local v0    # "cin":Ljava/io/BufferedReader;
    .restart local v1    # "cin":Ljava/io/BufferedReader;
    .restart local v3    # "eTag":Ljava/lang/String;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "sTag":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v0, v1

    .line 123
    .end local v1    # "cin":Ljava/io/BufferedReader;
    .end local v3    # "eTag":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "sTag":Ljava/lang/String;
    .restart local v0    # "cin":Ljava/io/BufferedReader;
    :goto_1
    const/4 v6, -0x1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-string v6, "ThemeCompatibility"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVersion(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6

    .end local v0    # "cin":Ljava/io/BufferedReader;
    .restart local v1    # "cin":Ljava/io/BufferedReader;
    .restart local v3    # "eTag":Ljava/lang/String;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "sTag":Ljava/lang/String;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "cin":Ljava/io/BufferedReader;
    .restart local v0    # "cin":Ljava/io/BufferedReader;
    goto :goto_3

    .line 117
    .end local v0    # "cin":Ljava/io/BufferedReader;
    .restart local v1    # "cin":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "cin":Ljava/io/BufferedReader;
    .restart local v0    # "cin":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method static loadConfig()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v10, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;>;"
    const-string v15, "ThemeCompatibility"

    const-string v16, "START loading theme compatibility config."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :try_start_0
    invoke-static {}, Lmiui/content/res/ThemeCompatibilityLoader;->getConfigDocumentTree()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 61
    .local v1, "document":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_2

    .line 62
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v11

    .line 63
    .local v11, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 65
    .local v8, "list":Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    add-int/lit8 v6, v15, -0x1

    .local v6, "index":I
    :goto_0
    if-ltz v6, :cond_2

    .line 66
    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 67
    .local v13, "temp":Lorg/w3c/dom/Node;
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 65
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 69
    :cond_1
    move-object v0, v13

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v4, v0

    .line 70
    .local v4, "element":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "eleName":Ljava/lang/String;
    const-string v15, "version"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 72
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v15

    const/16 v16, -0x1

    invoke-static/range {v15 .. v16}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v15

    sput v15, Lmiui/content/res/ThemeCompatibilityLoader;->sVersionInt:I

    .line 73
    sget v15, Lmiui/content/res/ThemeCompatibilityLoader;->sVersionInt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v15, :cond_0

    .line 95
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v3    # "eleName":Ljava/lang/String;
    .end local v4    # "element":Lorg/w3c/dom/Element;
    .end local v6    # "index":I
    .end local v8    # "list":Lorg/w3c/dom/NodeList;
    .end local v11    # "rootElement":Lorg/w3c/dom/Element;
    .end local v13    # "temp":Lorg/w3c/dom/Node;
    :cond_2
    :goto_1
    sget v15, Lmiui/content/res/ThemeCompatibilityLoader;->sVersionInt:I

    if-gez v15, :cond_3

    .line 96
    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 98
    :cond_3
    const-string v15, "ThemeCompatibility"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "END loading: version="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lmiui/content/res/ThemeCompatibilityLoader;->sVersionInt:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " size="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-object v10

    .line 75
    .restart local v1    # "document":Lorg/w3c/dom/Document;
    .restart local v3    # "eleName":Ljava/lang/String;
    .restart local v4    # "element":Lorg/w3c/dom/Element;
    .restart local v6    # "index":I
    .restart local v8    # "list":Lorg/w3c/dom/NodeList;
    .restart local v11    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v13    # "temp":Lorg/w3c/dom/Node;
    :cond_4
    :try_start_1
    invoke-static {v3}, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->getType(Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    move-result-object v14

    .line 76
    .local v14, "type":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;
    sget-object v15, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->NONE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    if-eq v14, v15, :cond_0

    .line 78
    const-string v15, "item"

    invoke-interface {v4, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 79
    .local v9, "nodeList":Lorg/w3c/dom/NodeList;
    if-eqz v9, :cond_0

    .line 80
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    .line 81
    .local v12, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v12, :cond_0

    .line 82
    invoke-interface {v9, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-static {v14, v15}, Lmiui/content/res/ThemeCompatibilityLoader;->parseCompatibilityInfo(Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;Lorg/w3c/dom/Node;)Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;

    move-result-object v7

    .line 83
    .local v7, "info":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;
    if-eqz v7, :cond_5

    .line 84
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 91
    .end local v1    # "document":Lorg/w3c/dom/Document;
    .end local v3    # "eleName":Ljava/lang/String;
    .end local v4    # "element":Lorg/w3c/dom/Element;
    .end local v5    # "i":I
    .end local v6    # "index":I
    .end local v7    # "info":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;
    .end local v8    # "list":Lorg/w3c/dom/NodeList;
    .end local v9    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v11    # "rootElement":Lorg/w3c/dom/Element;
    .end local v12    # "size":I
    .end local v13    # "temp":Lorg/w3c/dom/Node;
    .end local v14    # "type":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;
    :catch_0
    move-exception v2

    .line 92
    .local v2, "e":Ljava/lang/Exception;
    const-string v15, "ThemeCompatibility"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid item format: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static parseCompatibilityInfo(Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;Lorg/w3c/dom/Node;)Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;
    .locals 15
    .param p0, "type"    # Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;
    .param p1, "item"    # Lorg/w3c/dom/Node;

    .prologue
    .line 158
    const/4 v4, 0x0

    .local v4, "pkg":Ljava/lang/String;
    const/4 v9, 0x0

    .line 159
    .local v9, "resourceType":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "property1":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "property2":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "property3":Ljava/lang/String;
    const/4 v8, 0x0

    .line 161
    .local v8, "propertyExtra":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 162
    .local v0, "attrMap":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v12

    add-int/lit8 v1, v12, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_6

    .line 163
    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 164
    .local v11, "tmp":Lorg/w3c/dom/Node;
    const-string v12, "package"

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 165
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 162
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 166
    :cond_1
    const-string v12, "resourceType"

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 167
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 168
    :cond_2
    const-string v12, "property1"

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 169
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 170
    :cond_3
    const-string v12, "property2"

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 171
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 172
    :cond_4
    const-string v12, "property3"

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 173
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 174
    :cond_5
    const-string v12, "propertyExtra"

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 175
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 179
    .end local v11    # "tmp":Lorg/w3c/dom/Node;
    :cond_6
    const/4 v10, 0x0

    .line 180
    .local v10, "ret":Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;
    sget-object v12, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->FALLBACK:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    if-ne p0, v12, :cond_d

    .line 181
    new-instance v11, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    invoke-direct {v11}, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;-><init>()V

    .line 182
    .local v11, "tmp":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    iput-object v4, v11, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPkgName:Ljava/lang/String;

    .line 183
    invoke-static {v9}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->getType(Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    move-result-object v12

    iput-object v12, v11, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    .line 184
    iput-object v5, v11, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    .line 185
    iput-object v6, v11, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackName:Ljava/lang/String;

    .line 186
    invoke-static {v7}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_7
    const/4 v7, 0x0

    .end local v7    # "property3":Ljava/lang/String;
    :cond_8
    iput-object v7, v11, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackPkgName:Ljava/lang/String;

    .line 188
    invoke-static {v8}, Lmiui/content/res/ThemeCompatibilityLoader;->splitItemString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 189
    .local v3, "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a

    .line 190
    const/4 v12, 0x5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    new-array v2, v12, [Ljava/lang/String;

    .line 191
    .local v2, "pConfig":[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_2
    array-length v12, v2

    if-ge v1, v12, :cond_9

    .line 192
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v2, v1

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 194
    :cond_9
    iput-object v2, v11, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPreferredConfigs:[Ljava/lang/String;

    .line 197
    .end local v2    # "pConfig":[Ljava/lang/String;
    :cond_a
    move-object v10, v11

    .line 208
    .end local v3    # "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "tmp":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    :cond_b
    :goto_3
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityInfo;->isValid()Z

    move-result v12

    if-nez v12, :cond_c

    .line 209
    const-string v12, "ThemeCompatibility"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid compatibility info: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v10, 0x0

    .line 212
    :cond_c
    return-object v10

    .line 198
    .restart local v7    # "property3":Ljava/lang/String;
    :cond_d
    sget-object v12, Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;->NEW_DEF_VALUE:Lcom/miui/internal/content/res/ThemeDefinition$CompatibilityType;

    if-ne p0, v12, :cond_b

    .line 199
    new-instance v11, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;

    invoke-direct {v11}, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;-><init>()V

    .line 200
    .local v11, "tmp":Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;
    iput-object v4, v11, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResPkgName:Ljava/lang/String;

    .line 201
    invoke-static {v9}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->getType(Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    move-result-object v12

    iput-object v12, v11, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    .line 202
    iput-object v5, v11, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResName:Ljava/lang/String;

    .line 203
    iput-object v6, v11, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResValue:Ljava/lang/String;

    .line 205
    move-object v10, v11

    goto :goto_3
.end method

.method private static splitItemString(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "item"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 218
    :goto_0
    if-eqz p0, :cond_2

    const-string v5, "#"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 219
    const-string v5, " |\t"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 220
    .local v4, "tmp":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 221
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 223
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "tmp":Ljava/lang/String;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 228
    :cond_2
    return-object v3
.end method
