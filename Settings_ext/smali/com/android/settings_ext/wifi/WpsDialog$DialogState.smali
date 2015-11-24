.class final enum Lcom/android/settings_ext/wifi/WpsDialog$DialogState;
.super Ljava/lang/Enum;
.source "WpsDialog.java"


# static fields
.field public static final enum axA:Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

.field public static final enum axB:Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

.field public static final enum axC:Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

.field private static final synthetic axD:[Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

.field public static final enum axy:Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

.field public static final enum axz:Lcom/android/settings_ext/wifi/WpsDialog$DialogState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    const-string v1, "WPS_INIT"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;->axy:Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    .line 72
    new-instance v0, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    const-string v1, "WPS_START"

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;->axz:Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    .line 73
    new-instance v0, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    const-string v1, "WPS_COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;->axA:Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    .line 74
    new-instance v0, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;->axB:Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    .line 75
    new-instance v0, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    const-string v1, "WPS_FAILED"

    invoke-direct {v0, v1, v6}, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;->axC:Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    .line 70
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    sget-object v1, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;->axy:Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;->axz:Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;->axA:Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;->axB:Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;->axC:Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;->axD:[Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ext/wifi/WpsDialog$DialogState;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ext/wifi/WpsDialog$DialogState;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/settings_ext/wifi/WpsDialog$DialogState;->axD:[Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    invoke-virtual {v0}, [Lcom/android/settings_ext/wifi/WpsDialog$DialogState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ext/wifi/WpsDialog$DialogState;

    return-object v0
.end method
