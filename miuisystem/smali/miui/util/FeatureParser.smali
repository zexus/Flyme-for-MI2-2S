.class public Lmiui/util/FeatureParser;
.super Ljava/lang/Object;
.source "FeatureParser.java"


# static fields
.field private static final TAG_BOOL:Ljava/lang/String; = "bool"

.field private static final TAG_FLOAT:Ljava/lang/String; = "float"

.field private static final TAG_INTEGER:Ljava/lang/String; = "integer"

.field private static final TAG_INTEGER_ARRAY:Ljava/lang/String; = "integer-array"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_STRING:Ljava/lang/String; = "string"

.field private static final TAG_STRING_ARRAY:Ljava/lang/String; = "string-array"

.field public static final TYPE_BOOL:I = 0x1

.field public static final TYPE_FLOAT:I = 0x6

.field public static final TYPE_INTEGER:I = 0x2

.field public static final TYPE_INTEGER_ARRAY:I = 0x5

.field public static final TYPE_STRING:I = 0x3

.field public static final TYPE_STRING_ARRAY:I = 0x4

.field private static sBooleanMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sFloatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sIntArrMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sIntMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sStrArrMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sStrMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/FeatureParser;->sIntMap:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/FeatureParser;->sBooleanMap:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/FeatureParser;->sStrMap:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/FeatureParser;->sIntArrMap:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/FeatureParser;->sStrArrMap:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/FeatureParser;->sFloatMap:Ljava/util/HashMap;

    .line 58
    invoke-static {}, Lmiui/util/FeatureParser;->read()V

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 63
    sget-object v1, Lmiui/util/FeatureParser;->sBooleanMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 64
    .local v0, "value":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 67
    .end local p1    # "defaultValue":Z
    :cond_0
    return p1
.end method

.method public static getFloat(Ljava/lang/String;F)Ljava/lang/Float;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .prologue
    .line 104
    sget-object v1, Lmiui/util/FeatureParser;->sFloatMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 105
    .local v0, "value":Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .end local p1    # "defaultValue":F
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method public static getIntArray(Ljava/lang/String;)[I
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    sget-object v4, Lmiui/util/FeatureParser;->sIntArrMap:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 84
    .local v2, "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 86
    .local v3, "length":I
    new-array v1, v3, [I

    .line 87
    .local v1, "intArr":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 88
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "i":I
    .end local v1    # "intArr":[I
    .end local v3    # "length":I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public static getInteger(Ljava/lang/String;I)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 75
    sget-object v1, Lmiui/util/FeatureParser;->sIntMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 76
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 79
    .end local p1    # "defaultValue":I
    :cond_0
    return p1
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-object v0, Lmiui/util/FeatureParser;->sStrMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v1, Lmiui/util/FeatureParser;->sStrArrMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 97
    .local v0, "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 98
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 100
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasFeature(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "result":Z
    packed-switch p1, :pswitch_data_0

    .line 132
    :goto_0
    return v0

    .line 112
    :pswitch_0
    sget-object v1, Lmiui/util/FeatureParser;->sBooleanMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 113
    goto :goto_0

    .line 115
    :pswitch_1
    sget-object v1, Lmiui/util/FeatureParser;->sIntMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 116
    goto :goto_0

    .line 118
    :pswitch_2
    sget-object v1, Lmiui/util/FeatureParser;->sStrMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 119
    goto :goto_0

    .line 121
    :pswitch_3
    sget-object v1, Lmiui/util/FeatureParser;->sIntArrMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 122
    goto :goto_0

    .line 124
    :pswitch_4
    sget-object v1, Lmiui/util/FeatureParser;->sStrArrMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 125
    goto :goto_0

    .line 127
    :pswitch_5
    sget-object v1, Lmiui/util/FeatureParser;->sFloatMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 128
    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private static read()V
    .locals 16

    .prologue
    .line 137
    const/4 v5, 0x0

    .line 139
    .local v5, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 140
    .local v4, "fileName":Ljava/lang/String;
    :try_start_0
    const-string v13, "cancro"

    sget-object v14, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 141
    sget-object v13, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v14, "MI 3"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 142
    const-string v4, "cancro_MI3.xml"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "device_features/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    move-object v6, v5

    .line 154
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .local v6, "inputStream":Ljava/io/InputStream;
    :goto_1
    if-nez v6, :cond_12

    .line 155
    :try_start_2
    new-instance v3, Ljava/io/File;

    const-string v13, "/system/etc/device_features"

    invoke-direct {v3, v13, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 157
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 162
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :goto_2
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 163
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 164
    .local v9, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v13, "UTF-8"

    invoke-interface {v9, v5, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 166
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    .line 167
    .local v12, "type":I
    const/4 v11, 0x0

    .line 168
    .local v11, "tagName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 169
    .local v8, "keyName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 170
    .local v7, "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .line 171
    .local v10, "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    const/4 v13, 0x1

    if-eq v13, v12, :cond_11

    .line 172
    packed-switch v12, :pswitch_data_0

    .line 211
    :cond_1
    :goto_4
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    goto :goto_3

    .line 143
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "keyName":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "type":I
    :cond_2
    sget-object v13, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v14, "MI 4"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 144
    const-string v4, "cancro_MI4.xml"

    goto :goto_0

    .line 146
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".xml"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v6, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 217
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "file":Ljava/io/File;
    :cond_4
    if-eqz v6, :cond_5

    .line 219
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_5
    :goto_5
    move-object v5, v6

    .line 226
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :cond_6
    :goto_6
    return-void

    .line 174
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7    # "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "keyName":Ljava/lang/String;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v12    # "type":I
    :pswitch_0
    :try_start_5
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 175
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v13

    if-lez v13, :cond_7

    .line 176
    const/4 v13, 0x0

    invoke-interface {v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 178
    :cond_7
    const-string v13, "integer-array"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 179
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .restart local v7    # "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_4

    .line 180
    :cond_8
    const-string v13, "string-array"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 181
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .restart local v10    # "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_4

    .line 182
    :cond_9
    const-string v13, "bool"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 183
    sget-object v13, Lmiui/util/FeatureParser;->sBooleanMap:Ljava/util/HashMap;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 214
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "keyName":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_1
    move-exception v13

    .line 217
    :goto_7
    if-eqz v5, :cond_6

    .line 219
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    .line 220
    :catch_2
    move-exception v13

    goto :goto_6

    .line 184
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7    # "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "keyName":Ljava/lang/String;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_a
    :try_start_7
    const-string v13, "integer"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 185
    sget-object v13, Lmiui/util/FeatureParser;->sIntMap:Ljava/util/HashMap;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    .line 215
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "keyName":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_3
    move-exception v13

    .line 217
    :goto_8
    if-eqz v5, :cond_6

    .line 219
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_6

    .line 220
    :catch_4
    move-exception v13

    goto :goto_6

    .line 186
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7    # "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "keyName":Ljava/lang/String;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_b
    :try_start_9
    const-string v13, "string"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 187
    sget-object v13, Lmiui/util/FeatureParser;->sStrMap:Ljava/util/HashMap;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .line 217
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "keyName":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "type":I
    :catchall_0
    move-exception v13

    :goto_9
    if-eqz v5, :cond_c

    .line 219
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 222
    :cond_c
    :goto_a
    throw v13

    .line 188
    .restart local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7    # "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "keyName":Ljava/lang/String;
    .restart local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_d
    :try_start_b
    const-string v13, "float"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 189
    sget-object v13, Lmiui/util/FeatureParser;->sFloatMap:Ljava/util/HashMap;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v13, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 190
    :cond_e
    const-string v13, "item"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 191
    if-eqz v7, :cond_f

    .line 192
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 193
    :cond_f
    if-eqz v10, :cond_1

    .line 194
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 199
    :pswitch_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "end_tag_name":Ljava/lang/String;
    const-string v13, "integer-array"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 201
    sget-object v13, Lmiui/util/FeatureParser;->sIntArrMap:Ljava/util/HashMap;

    invoke-virtual {v13, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 203
    :cond_10
    const-string v13, "string-array"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 204
    sget-object v13, Lmiui/util/FeatureParser;->sStrArrMap:Ljava/util/HashMap;

    invoke-virtual {v13, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 205
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 217
    .end local v1    # "end_tag_name":Ljava/lang/String;
    :cond_11
    if-eqz v5, :cond_6

    .line 219
    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_6

    .line 220
    :catch_5
    move-exception v13

    goto/16 :goto_6

    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "intList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "keyName":Ljava/lang/String;
    .end local v9    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "type":I
    .restart local v3    # "file":Ljava/io/File;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    :catch_6
    move-exception v13

    goto/16 :goto_5

    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catch_7
    move-exception v14

    goto :goto_a

    .line 217
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v13

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto :goto_9

    .line 215
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    :catch_8
    move-exception v13

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_8

    .line 214
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    :catch_9
    move-exception v13

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_7

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    :cond_12
    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_2

    .line 172
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
