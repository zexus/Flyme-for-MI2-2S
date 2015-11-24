.class Lcom/android/settings_ext/applications/PreferredSmsSettings$DisplayNameComparator;
.super Ljava/lang/Object;
.source "PreferredSmsSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final bn:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/PreferredSmsSettings$DisplayNameComparator;->bn:Ljava/text/Collator;

    .line 131
    iget-object v0, p0, Lcom/android/settings_ext/applications/PreferredSmsSettings$DisplayNameComparator;->bn:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 132
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings_ext/applications/PreferredSmsSettings$DisplayNameComparator;->bn:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 129
    check-cast p1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    check-cast p2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ext/applications/PreferredSmsSettings$DisplayNameComparator;->a(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v0

    return v0
.end method
