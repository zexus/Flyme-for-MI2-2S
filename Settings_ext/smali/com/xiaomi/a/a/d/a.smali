.class public Lcom/xiaomi/a/a/d/a;
.super Ljava/lang/Object;
.source "BuildSettings.java"


# static fields
.field public static final aCN:Z

.field public static final aCO:Z

.field public static final aCP:Z

.field public static final aCQ:Z

.field public static aCR:Z

.field public static final aCS:Z

.field public static final aCT:Z

.field private static aCU:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 29
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v3, "2A2FE0D7"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/a/a/d/a;->aCN:Z

    .line 32
    sget-boolean v0, Lcom/xiaomi/a/a/d/a;->aCN:Z

    if-nez v0, :cond_0

    const-string v0, "DEBUG"

    const-string v3, "@SHIP.TO.2A2FE0D7@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/xiaomi/a/a/d/a;->aCO:Z

    .line 35
    const-string v0, "LOGABLE"

    const-string v3, "@SHIP.TO.2A2FE0D7@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/a/a/d/a;->aCP:Z

    .line 38
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v3, "YY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/a/a/d/a;->aCQ:Z

    .line 40
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v3, "TEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/a/a/d/a;->aCR:Z

    .line 43
    const-string v0, "BETA"

    const-string v3, "@SHIP.TO.2A2FE0D7@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/a/a/d/a;->aCS:Z

    .line 46
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    if-eqz v0, :cond_1

    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v3, "RC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    sput-boolean v1, Lcom/xiaomi/a/a/d/a;->aCT:Z

    .line 49
    sput v2, Lcom/xiaomi/a/a/d/a;->aCU:I

    .line 52
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v1, "SANDBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    const/4 v0, 0x2

    sput v0, Lcom/xiaomi/a/a/d/a;->aCU:I

    .line 59
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 32
    goto :goto_0

    .line 54
    :cond_3
    const-string v0, "@SHIP.TO.2A2FE0D7@"

    const-string v1, "ONEBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    const/4 v0, 0x3

    sput v0, Lcom/xiaomi/a/a/d/a;->aCU:I

    goto :goto_1

    .line 57
    :cond_4
    sput v2, Lcom/xiaomi/a/a/d/a;->aCU:I

    goto :goto_1
.end method

.method public static dM(I)V
    .locals 0

    .prologue
    .line 74
    sput p0, Lcom/xiaomi/a/a/d/a;->aCU:I

    .line 75
    return-void
.end method

.method public static yL()Z
    .locals 2

    .prologue
    .line 62
    sget v0, Lcom/xiaomi/a/a/d/a;->aCU:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static yM()Z
    .locals 2

    .prologue
    .line 66
    sget v0, Lcom/xiaomi/a/a/d/a;->aCU:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static yN()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/xiaomi/a/a/d/a;->aCU:I

    return v0
.end method
