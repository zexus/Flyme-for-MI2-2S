.class public Lorg/htmlparser/tags/DefinitionListBullet;
.super Lorg/htmlparser/tags/CompositeTag;
.source "DefinitionListBullet.java"


# static fields
.field private static final aVB:[Ljava/lang/String;

.field private static final aVC:[Ljava/lang/String;

.field private static final aVE:[Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "DD"

    aput-object v1, v0, v2

    const-string v1, "DT"

    aput-object v1, v0, v3

    sput-object v0, Lorg/htmlparser/tags/DefinitionListBullet;->aVB:[Ljava/lang/String;

    .line 46
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "DD"

    aput-object v1, v0, v2

    const-string v1, "DT"

    aput-object v1, v0, v3

    const-string v1, "DL"

    aput-object v1, v0, v4

    sput-object v0, Lorg/htmlparser/tags/DefinitionListBullet;->aVE:[Ljava/lang/String;

    .line 51
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "DL"

    aput-object v1, v0, v2

    const-string v1, "BODY"

    aput-object v1, v0, v3

    const-string v1, "HTML"

    aput-object v1, v0, v4

    sput-object v0, Lorg/htmlparser/tags/DefinitionListBullet;->aVC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public Fw()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lorg/htmlparser/tags/DefinitionListBullet;->aVB:[Ljava/lang/String;

    return-object v0
.end method

.method public Fx()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/htmlparser/tags/DefinitionListBullet;->aVE:[Ljava/lang/String;

    return-object v0
.end method

.method public Fy()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lorg/htmlparser/tags/DefinitionListBullet;->aVC:[Ljava/lang/String;

    return-object v0
.end method
