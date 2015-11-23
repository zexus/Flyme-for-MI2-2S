.class public final enum Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;
.super Ljava/lang/Enum;
.source "MiuiChooseLockPattern.java"


# static fields
.field public static final enum oO:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum oP:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum oQ:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum oR:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum oS:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum oT:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

.field public static final enum oU:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

.field private static final synthetic oV:[Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;


# instance fields
.field final footerMessage:I

.field headerMessage:I

.field final leftMode:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

.field final patternEnabled:Z

.field final rightMode:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 205
    new-instance v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f0904f3

    sget-object v4, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oF:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->oM:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oO:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 209
    new-instance v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "HelpScreen"

    const/4 v2, 0x1

    const v3, 0x7f090507

    sget-object v4, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oF:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->oL:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oP:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 212
    new-instance v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ChoiceTooShort"

    const/4 v2, 0x2

    const v3, 0x7f0904f6

    sget-object v4, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oF:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->oM:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oQ:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 216
    new-instance v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "FirstChoiceValid"

    const/4 v2, 0x3

    const v3, 0x7f0904f7

    sget-object v4, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oF:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->oM:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oR:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 219
    new-instance v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "NeedToConfirm"

    const/4 v2, 0x4

    const v3, 0x7f0904f8

    sget-object v4, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oD:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->oK:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oS:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 223
    new-instance v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ConfirmWrong"

    const/4 v2, 0x5

    const v3, 0x7f0904f1

    sget-object v4, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oD:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->oK:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oT:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 227
    new-instance v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    const-string v1, "ChoiceConfirmed"

    const/4 v2, 0x6

    const v3, 0x7f0904f9

    sget-object v4, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->oD:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v5, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->oJ:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;-><init>(Ljava/lang/String;IILcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V

    sput-object v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oU:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 203
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oO:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oP:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oQ:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oR:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oS:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oT:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oU:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oV:[Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;IZ)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 243
    iput p3, p0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    .line 244
    iput-object p4, p0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    .line 245
    iput-object p5, p0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 246
    iput p6, p0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    .line 247
    iput-boolean p7, p0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    .line 248
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    .prologue
    .line 203
    const-class v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->oV:[Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/MiuiChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method
