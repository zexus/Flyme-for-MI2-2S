.class public Lmiui/content/res/ThemeValues;
.super Ljava/lang/Object;
.source "ThemeValues.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String; = "ThemeValues"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field public mIntegerArrays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field public mIntegers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mStringArrays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeValues;->mStrings:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/content/res/ThemeValues;->mStringArrays:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method private static getIdentifier(Landroid/content/res/Resources;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resType"    # Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .param p2, "resName"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, "type":Ljava/lang/String;
    sget-object v2, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->INTEGER_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->STRING_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne p1, v2, :cond_2

    .line 217
    :cond_0
    const-string v1, "array"

    .line 221
    :goto_0
    invoke-virtual {p0, p2, v1, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 222
    .local v0, "id":I
    if-nez v0, :cond_1

    const-string v2, "miui"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    const-string v2, "miui.system"

    invoke-virtual {p0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 224
    if-nez v0, :cond_1

    .line 225
    const-string v2, "android.miui"

    invoke-virtual {p0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 228
    :cond_1
    return v0

    .line 219
    .end local v0    # "id":I
    :cond_2
    invoke-virtual {p1}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getIdentifierWithFallback(Landroid/content/res/Resources;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resType"    # Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .param p2, "resName"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0, p1, p2, p3}, Lmiui/content/res/ThemeValues;->getIdentifier(Landroid/content/res/Resources;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 234
    .local v3, "id":I
    if-lez v3, :cond_0

    .line 235
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_0
    invoke-static {p3}, Lmiui/content/res/ThemeCompatibility;->getFallbackList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 238
    .local v1, "fallbackList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    if-eqz v1, :cond_2

    .line 239
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 240
    .local v0, "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    iget-object v5, v0, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne v5, p1, :cond_1

    iget-object v5, v0, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackPkgName:Ljava/lang/String;

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 243
    iget-object v5, v0, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    invoke-static {p0, p1, v5, p3}, Lmiui/content/res/ThemeValues;->getIdentifier(Landroid/content/res/Resources;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 244
    if-lez v3, :cond_1

    .line 245
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    .end local v0    # "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v4
.end method

.method private static ignoreResourceValue(Ljava/lang/String;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "resType"    # Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .param p2, "resName"    # Ljava/lang/String;

    .prologue
    .line 262
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->COLOR:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne p1, v0, :cond_0

    const-string v0, "android"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "statusbar_content"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-static {p0}, Lmiui/content/res/ThemeValues;->isOldVersionComponentTheme(Ljava/lang/String;)Z

    move-result v0

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOldVersionComponentTheme(Ljava/lang/String;)Z
    .locals 3
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 271
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/theme/compatibility/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static parseResourceArrayValue(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Lorg/w3c/dom/Element;)Ljava/lang/Object;
    .locals 6
    .param p0, "resType"    # Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v3, 0x0

    .line 167
    const-string v5, "item"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 169
    .local v1, "arrayItems":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .local v4, "size":I
    if-nez v4, :cond_1

    .line 186
    .end local v4    # "size":I
    :cond_0
    :goto_0
    return-object v3

    .line 173
    .restart local v4    # "size":I
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 174
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 175
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 177
    :cond_2
    sget-object v5, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->INTEGER_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne p0, v5, :cond_3

    .line 178
    new-array v3, v4, [I

    .line 179
    .local v3, "integerArray":[I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_0

    .line 180
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v2

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 183
    .end local v3    # "integerArray":[I
    :cond_3
    sget-object v5, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->STRING_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne p0, v5, :cond_0

    .line 184
    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method private static parseResourceNonArrayValue(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "resType"    # Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-static {p1}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 203
    :cond_0
    :goto_0
    return-object v0

    .line 191
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "ret":Ljava/lang/Object;
    sget-object v2, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->BOOLEAN:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne p0, v2, :cond_3

    .line 195
    const-string v2, "true"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "ret":Ljava/lang/Integer;
    goto :goto_0

    .line 196
    .local v0, "ret":Ljava/lang/Object;
    :cond_3
    sget-object v2, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->COLOR:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->INTEGER:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-eq p0, v2, :cond_4

    sget-object v2, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne p0, v2, :cond_5

    .line 197
    :cond_4
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "ret":Ljava/lang/Integer;
    goto :goto_0

    .line 198
    .local v0, "ret":Ljava/lang/Object;
    :cond_5
    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DIMEN:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne p0, v1, :cond_6

    .line 199
    invoke-static {p1}, Landroid/app/MiuiThemeHelper;->parseDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "ret":Ljava/lang/Integer;
    goto :goto_0

    .line 200
    .local v0, "ret":Ljava/lang/Object;
    :cond_6
    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->STRING:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne p0, v1, :cond_0

    .line 201
    move-object v0, p1

    .local v0, "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public static parseThemeValues(Landroid/content/res/MiuiResources;Ljava/io/InputStream;Ljava/lang/String;)Lmiui/content/res/ThemeValues;
    .locals 22
    .param p0, "resource"    # Landroid/content/res/MiuiResources;
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "defPkgName"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v15, Lmiui/content/res/ThemeValues;

    invoke-direct {v15}, Lmiui/content/res/ThemeValues;-><init>()V

    .line 115
    .local v15, "ret":Lmiui/content/res/ThemeValues;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 116
    .local v8, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 117
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v20, Ljava/io/BufferedInputStream;

    const/16 v21, 0x2000

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 118
    .local v4, "document":Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v16

    .line 119
    .local v16, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 120
    .local v11, "list":Lorg/w3c/dom/NodeList;
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    add-int/lit8 v10, v20, -0x1

    .local v10, "index":I
    :goto_0
    if-ltz v10, :cond_6

    .line 121
    invoke-interface {v11, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    .line 122
    .local v18, "temp":Lorg/w3c/dom/Node;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 120
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 124
    :cond_1
    move-object/from16 v0, v18

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v6, v0

    .line 125
    .local v6, "element":Lorg/w3c/dom/Element;
    const-string v20, "name"

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 126
    .local v12, "name":Ljava/lang/String;
    invoke-static {v12}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 128
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, "elementName":Ljava/lang/String;
    invoke-static {v7}, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->getType(Ljava/lang/String;)Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    move-result-object v14

    .line 130
    .local v14, "resType":Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    sget-object v20, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->NONE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    move-object/from16 v0, v20

    if-eq v14, v0, :cond_0

    .line 131
    move-object/from16 v0, p2

    invoke-static {v0, v14, v12}, Lmiui/content/res/ThemeValues;->ignoreResourceValue(Ljava/lang/String;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 133
    const-string v20, "package"

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 134
    .local v13, "pkg":Ljava/lang/String;
    invoke-static {v13}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 135
    move-object/from16 v13, p2

    .line 138
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v0, v14, v12, v13}, Lmiui/content/res/ThemeValues;->getIdentifierWithFallback(Landroid/content/res/Resources;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 139
    .local v9, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_0

    .line 143
    sget-object v20, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->INTEGER_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    move-object/from16 v0, v20

    if-ne v14, v0, :cond_3

    .line 144
    iget-object v0, v15, Lmiui/content/res/ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    move-object/from16 v17, v0

    .line 145
    .local v17, "saveMap":Ljava/util/Map;
    invoke-static {v14, v6}, Lmiui/content/res/ThemeValues;->parseResourceArrayValue(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v19

    .line 156
    .local v19, "value":Ljava/lang/Object;
    :goto_2
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v9, v1}, Lmiui/content/res/ThemeValues;->saveIdentifierMap(Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 158
    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .end local v6    # "element":Lorg/w3c/dom/Element;
    .end local v7    # "elementName":Ljava/lang/String;
    .end local v8    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "index":I
    .end local v11    # "list":Lorg/w3c/dom/NodeList;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "resType":Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .end local v16    # "rootElement":Lorg/w3c/dom/Element;
    .end local v17    # "saveMap":Ljava/util/Map;
    .end local v18    # "temp":Lorg/w3c/dom/Node;
    .end local v19    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 159
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 163
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v15

    .line 146
    .restart local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "document":Lorg/w3c/dom/Document;
    .restart local v6    # "element":Lorg/w3c/dom/Element;
    .restart local v7    # "elementName":Ljava/lang/String;
    .restart local v8    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v9    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "index":I
    .restart local v11    # "list":Lorg/w3c/dom/NodeList;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local v14    # "resType":Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .restart local v16    # "rootElement":Lorg/w3c/dom/Element;
    .restart local v18    # "temp":Lorg/w3c/dom/Node;
    :cond_3
    :try_start_2
    sget-object v20, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->STRING_ARRAY:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    move-object/from16 v0, v20

    if-ne v14, v0, :cond_4

    .line 147
    iget-object v0, v15, Lmiui/content/res/ThemeValues;->mStringArrays:Ljava/util/HashMap;

    move-object/from16 v17, v0

    .line 148
    .restart local v17    # "saveMap":Ljava/util/Map;
    invoke-static {v14, v6}, Lmiui/content/res/ThemeValues;->parseResourceArrayValue(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Lorg/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19    # "value":Ljava/lang/Object;
    goto :goto_2

    .line 149
    .end local v17    # "saveMap":Ljava/util/Map;
    .end local v19    # "value":Ljava/lang/Object;
    :cond_4
    sget-object v20, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->STRING:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    move-object/from16 v0, v20

    if-ne v14, v0, :cond_5

    .line 150
    iget-object v0, v15, Lmiui/content/res/ThemeValues;->mStrings:Ljava/util/HashMap;

    move-object/from16 v17, v0

    .line 151
    .restart local v17    # "saveMap":Ljava/util/Map;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v14, v0}, Lmiui/content/res/ThemeValues;->parseResourceNonArrayValue(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19    # "value":Ljava/lang/Object;
    goto :goto_2

    .line 153
    .end local v17    # "saveMap":Ljava/util/Map;
    .end local v19    # "value":Ljava/lang/Object;
    :cond_5
    iget-object v0, v15, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    move-object/from16 v17, v0

    .line 154
    .restart local v17    # "saveMap":Ljava/util/Map;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v14, v0}, Lmiui/content/res/ThemeValues;->parseResourceNonArrayValue(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v19

    .restart local v19    # "value":Ljava/lang/Object;
    goto :goto_2

    .line 161
    .end local v6    # "element":Lorg/w3c/dom/Element;
    .end local v7    # "elementName":Ljava/lang/String;
    .end local v9    # "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "resType":Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;
    .end local v17    # "saveMap":Ljava/util/Map;
    .end local v18    # "temp":Lorg/w3c/dom/Node;
    .end local v19    # "value":Ljava/lang/Object;
    :cond_6
    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "document":Lorg/w3c/dom/Document;
    .end local v8    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10    # "index":I
    .end local v11    # "list":Lorg/w3c/dom/NodeList;
    .end local v16    # "rootElement":Lorg/w3c/dom/Element;
    :catchall_0
    move-exception v20

    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v20
.end method

.method private static saveIdentifierMap(Ljava/util/Map;Ljava/util/List;Ljava/lang/Object;)V
    .locals 3
    .param p0, "saveMap"    # Ljava/util/Map;
    .param p1, "keyList"    # Ljava/util/List;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 207
    if-eqz p2, :cond_0

    .line 208
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 209
    .local v1, "key":Ljava/lang/Object;
    invoke-interface {p0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 212
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/Object;
    :cond_0
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/content/res/ThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/content/res/ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/content/res/ThemeValues;->mStringArrays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeNewDefaultValueIfNeed(Landroid/content/res/MiuiResources;Ljava/lang/String;)V
    .locals 8
    .param p1, "resource"    # Landroid/content/res/MiuiResources;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p2}, Lmiui/content/res/ThemeCompatibility;->getNewDefaultValueList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 61
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;>;"
    if-eqz v2, :cond_0

    invoke-static {p2}, Lmiui/content/res/ThemeValues;->isOldVersionComponentTheme(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;

    .line 67
    .local v3, "tmp":Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;
    iget-object v5, v3, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    iget-object v6, v3, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResName:Ljava/lang/String;

    invoke-static {p1, v5, v6, p2}, Lmiui/content/res/ThemeValues;->getIdentifier(Landroid/content/res/Resources;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 68
    .local v1, "id":I
    if-gtz v1, :cond_3

    .line 69
    const-string v5, "ThemeValues"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can not find newDefValue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":I
    .end local v3    # "tmp":Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;
    :catch_0
    move-exception v5

    goto :goto_0

    .line 72
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "id":I
    .restart local v3    # "tmp":Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;
    :cond_3
    iget-object v5, p0, Lmiui/content/res/ThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 73
    :cond_4
    const-string v5, "ThemeValues"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "customized theme has contain this value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 76
    :cond_5
    iget-object v5, v3, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    iget-object v6, v3, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResValue:Ljava/lang/String;

    invoke-static {v5, v6}, Lmiui/content/res/ThemeValues;->parseResourceNonArrayValue(Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 77
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_2

    .line 78
    iget-object v5, v3, Lcom/miui/internal/content/res/ThemeDefinition$NewDefaultValue;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    sget-object v6, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->STRING:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne v5, v6, :cond_6

    .line 79
    iget-object v5, p0, Lmiui/content/res/ThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 81
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_6
    iget-object v5, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method public putAll(Lmiui/content/res/ThemeValues;)V
    .locals 2
    .param p1, "values"    # Lmiui/content/res/ThemeValues;

    .prologue
    .line 48
    iget-object v0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    iget-object v1, p1, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 49
    iget-object v0, p0, Lmiui/content/res/ThemeValues;->mStrings:Ljava/util/HashMap;

    iget-object v1, p1, Lmiui/content/res/ThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 50
    iget-object v0, p0, Lmiui/content/res/ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    iget-object v1, p1, Lmiui/content/res/ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 51
    iget-object v0, p0, Lmiui/content/res/ThemeValues;->mStringArrays:Ljava/util/HashMap;

    iget-object v1, p1, Lmiui/content/res/ThemeValues;->mStringArrays:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 52
    return-void
.end method
