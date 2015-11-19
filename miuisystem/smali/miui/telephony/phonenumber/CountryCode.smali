.class public Lmiui/telephony/phonenumber/CountryCode;
.super Ljava/lang/Object;
.source "CountryCode.java"


# static fields
.field private static final DEFAULT_IDD_CODE:Ljava/lang/String; = "00"

.field private static final EMPTY:Ljava/lang/String; = ""

.field public static final GSM_GENERAL_IDD_CODE:Ljava/lang/String; = "+"

.field private static ICC_COUNTRY_CODE:Ljava/lang/String;

.field private static ICC_OPERATOR:Ljava/lang/String;

.field private static NETWORK_COUNTRY_CODE:Ljava/lang/String;

.field private static NETWORK_IDD_CODE:Ljava/lang/String;

.field private static NETWORK_OPERATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, ""

    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->ICC_OPERATOR:Ljava/lang/String;

    .line 16
    const-string v0, ""

    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->ICC_COUNTRY_CODE:Ljava/lang/String;

    .line 17
    const-string v0, ""

    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_OPERATOR:Ljava/lang/String;

    .line 18
    const-string v0, ""

    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_COUNTRY_CODE:Ljava/lang/String;

    .line 19
    const-string v0, "00"

    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIccCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->updateIcc()V

    .line 44
    sget-object v0, Lmiui/telephony/phonenumber/CountryCode;->ICC_COUNTRY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public static getIddCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->updateNetwork()V

    .line 58
    sget-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->updateNetwork()V

    .line 49
    sget-object v0, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_COUNTRY_CODE:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserDefinedCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    const-string v0, "persist.radio.countrycode"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isChinaEnvironment()Z
    .locals 2

    .prologue
    .line 62
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getUserDefinedCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "cc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getIccCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_0
    invoke-static {}, Lmiui/telephony/phonenumber/CountryCode;->getNetworkCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/telephony/phonenumber/CountryCodeConverter;->isChinaEnvironment(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static updateIcc()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 22
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "simOperator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    sget-object v1, Lmiui/telephony/phonenumber/CountryCode;->ICC_OPERATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    sput-object v0, Lmiui/telephony/phonenumber/CountryCode;->ICC_OPERATOR:Ljava/lang/String;

    .line 25
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/telephony/phonenumber/CountryCodeConverter;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/telephony/phonenumber/CountryCode;->ICC_COUNTRY_CODE:Ljava/lang/String;

    .line 27
    :cond_0
    return-void
.end method

.method private static updateNetwork()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 30
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "networkOperator":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    sget-object v2, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_OPERATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    sput-object v1, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_OPERATOR:Ljava/lang/String;

    .line 33
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "mcc":Ljava/lang/String;
    invoke-static {v0}, Lmiui/telephony/phonenumber/CountryCodeConverter;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_COUNTRY_CODE:Ljava/lang/String;

    .line 35
    invoke-static {v0}, Lmiui/telephony/phonenumber/CountryCodeConverter;->getIddCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/lang/String;

    .line 36
    sget-object v2, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 37
    const-string v2, "00"

    sput-object v2, Lmiui/telephony/phonenumber/CountryCode;->NETWORK_IDD_CODE:Ljava/lang/String;

    .line 40
    .end local v0    # "mcc":Ljava/lang/String;
    :cond_0
    return-void
.end method
