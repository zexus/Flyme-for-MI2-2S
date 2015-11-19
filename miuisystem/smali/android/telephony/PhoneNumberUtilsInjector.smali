.class Landroid/telephony/PhoneNumberUtilsInjector;
.super Ljava/lang/Object;
.source "PhoneNumberUtilsInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendNonSeparator(Ljava/lang/StringBuilder;CI)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "c"    # C
    .param p2, "pos"    # I

    .prologue
    .line 14
    if-nez p2, :cond_1

    const/16 v1, 0x2b

    if-ne p1, v1, :cond_1

    .line 19
    :cond_0
    :goto_0
    return-void

    .line 15
    :cond_1
    const/16 v1, 0xa

    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 16
    .local v0, "digit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static getCdmaTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "ps":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 72
    .end local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 59
    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_1
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "values":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    move-object p1, v4

    .line 61
    goto :goto_0

    .line 63
    :cond_2
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "defaultType":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "cdmaType":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 66
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object v6

    const-string v7, "gsm.current.phone-type"

    invoke-virtual {v6, v2, v7, v1}, Lmiui/telephony/TelephonyManagerEx;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "phoneType":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 69
    aget-object v6, v5, v2

    if-eqz v6, :cond_0

    aget-object p1, v5, v2

    goto :goto_0

    .line 65
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static matchBrazilCarrierCodeAndPrefix(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v3, 0x30

    const/16 v5, 0x31

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 35
    if-ne p1, v0, :cond_1

    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_4

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 40
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_4

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x34

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_0

    .line 43
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x32

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_0

    .line 45
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x35

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    .line 50
    goto :goto_0
.end method

.method public static matchBrazilSuccess(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 2
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "alen"    # I
    .param p2, "b"    # Ljava/lang/String;
    .param p3, "blen"    # I

    .prologue
    .line 25
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "br"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtilsInjector;->matchBrazilCarrierCodeAndPrefix(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Landroid/telephony/PhoneNumberUtilsInjector;->matchBrazilCarrierCodeAndPrefix(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
