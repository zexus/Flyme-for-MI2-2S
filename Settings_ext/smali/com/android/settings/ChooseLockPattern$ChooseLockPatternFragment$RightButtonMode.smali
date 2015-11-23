.class final enum Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# static fields
.field public static final enum dF:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum dG:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum dH:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum dI:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum dJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

.field private static final synthetic dK:[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 243
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "Continue"

    const v2, 0x7f0904fd

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->dF:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 244
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "ContinueDisabled"

    const v2, 0x7f0904fd

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->dG:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 245
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "Confirm"

    const v2, 0x7f0904fa

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->dH:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 246
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "ConfirmDisabled"

    const v2, 0x7f0904fa

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->dI:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 247
    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "Ok"

    const v2, 0x104000a

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->dJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 242
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->dF:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->dG:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->dH:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->dI:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->dJ:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->dK:[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 254
    iput p3, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    .line 255
    iput-boolean p4, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    .line 256
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;
    .locals 1

    .prologue
    .line 242
    const-class v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->dK:[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v0}, [Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    return-object v0
.end method
