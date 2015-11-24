.class final enum Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
.super Ljava/lang/Enum;
.source "MiuiChooseLockPattern.java"


# static fields
.field public static final enum oB:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum oC:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum oD:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum oE:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field public static final enum oF:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field private static final synthetic oG:[Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;


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

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 156
    new-instance v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Cancel"

    const v2, 0x7f090169

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oB:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 157
    new-instance v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "CancelDisabled"

    const v2, 0x7f090169

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oC:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 158
    new-instance v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Retry"

    const v2, 0x7f0904fc

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oD:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 159
    new-instance v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "RetryDisabled"

    const v2, 0x7f0904fc

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oE:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 160
    new-instance v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    const-string v1, "Gone"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oF:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 155
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oB:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oC:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oD:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oE:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oF:Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oG:[Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 168
    iput p3, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    .line 169
    iput-boolean p4, p0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    .line 170
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    .locals 1

    .prologue
    .line 155
    const-class v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oG:[Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    invoke-virtual {v0}, [Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ext/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    return-object v0
.end method
