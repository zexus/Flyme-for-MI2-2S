.class public final enum Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# static fields
.field public static final enum dL:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum dM:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum dN:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum dO:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum dP:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum dQ:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum dR:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field private static final synthetic dS:[Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;


# instance fields
.field final footerMessage:I

.field headerMessage:I

.field final leftMode:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field final patternEnabled:Z

.field final rightMode:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 267
    new-instance v0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f0904f3

    sget-object v4, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->dz:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->dG:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->dL:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 271
    new-instance v0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "HelpScreen"

    const/4 v2, 0x1

    const v3, 0x7f090507

    sget-object v4, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->dD:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->dJ:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->dM:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 274
    new-instance v0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ChoiceTooShort"

    const/4 v2, 0x2

    const v3, 0x7f0904f6

    sget-object v4, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->dB:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->dG:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->dN:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 278
    new-instance v0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "FirstChoiceValid"

    const/4 v2, 0x3

    const v3, 0x7f0904f7

    sget-object v4, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->dB:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->dF:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->dO:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 281
    new-instance v0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "NeedToConfirm"

    const/4 v2, 0x4

    const v3, 0x7f0904f8

    sget-object v4, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->dz:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->dI:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->dP:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 285
    new-instance v0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ConfirmWrong"

    const/4 v2, 0x5

    const v3, 0x7f0904f1

    sget-object v4, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->dz:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->dI:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->dQ:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 289
    new-instance v0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ChoiceConfirmed"

    const/4 v2, 0x6

    const v3, 0x7f0904f9

    sget-object v4, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->dz:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->dH:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->dR:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 265
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->dL:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->dM:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->dN:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->dO:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->dP:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->dQ:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->dR:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->dS:[Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 305
    iput p3, p0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 306
    iput-object p4, p0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 307
    iput-object p5, p0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 308
    iput p6, p0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    .line 309
    iput-boolean p7, p0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    .line 310
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    .prologue
    .line 265
    const-class v0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->dS:[Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ext/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method
