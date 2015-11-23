.class final enum Lcom/android/settings_ext/wifi/AccessPoint$PskType;
.super Ljava/lang/Enum;
.source "AccessPoint.java"


# static fields
.field public static final enum asl:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

.field public static final enum asm:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

.field public static final enum asn:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

.field public static final enum aso:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

.field private static final synthetic asp:[Lcom/android/settings_ext/wifi/AccessPoint$PskType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    new-instance v0, Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ext/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ext/wifi/AccessPoint$PskType;->asl:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    .line 110
    new-instance v0, Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    const-string v1, "WPA"

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ext/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ext/wifi/AccessPoint$PskType;->asm:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    .line 111
    new-instance v0, Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    const-string v1, "WPA2"

    invoke-direct {v0, v1, v4}, Lcom/android/settings_ext/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ext/wifi/AccessPoint$PskType;->asn:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    .line 112
    new-instance v0, Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    const-string v1, "WPA_WPA2"

    invoke-direct {v0, v1, v5}, Lcom/android/settings_ext/wifi/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ext/wifi/AccessPoint$PskType;->aso:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    .line 108
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    sget-object v1, Lcom/android/settings_ext/wifi/AccessPoint$PskType;->asl:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings_ext/wifi/AccessPoint$PskType;->asm:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings_ext/wifi/AccessPoint$PskType;->asn:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings_ext/wifi/AccessPoint$PskType;->aso:Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings_ext/wifi/AccessPoint$PskType;->asp:[Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ext/wifi/AccessPoint$PskType;
    .locals 1

    .prologue
    .line 108
    const-class v0, Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ext/wifi/AccessPoint$PskType;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/settings_ext/wifi/AccessPoint$PskType;->asp:[Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    invoke-virtual {v0}, [Lcom/android/settings_ext/wifi/AccessPoint$PskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ext/wifi/AccessPoint$PskType;

    return-object v0
.end method
