.class Lcom/android/settings/eW;
.super Ljava/lang/Object;
.source "NotificationAppListSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic ti:Lcom/android/settings/eU;


# direct methods
.method constructor <init>(Lcom/android/settings/eU;)V
    .locals 1

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings/eW;->ti:Lcom/android/settings/eU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/eW;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/fa;Lcom/android/settings/fa;)I
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/eW;->sCollator:Ljava/text/Collator;

    invoke-static {p1}, Lcom/android/settings/fa;->b(Lcom/android/settings/fa;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/android/settings/fa;->b(Lcom/android/settings/fa;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 158
    check-cast p1, Lcom/android/settings/fa;

    check-cast p2, Lcom/android/settings/fa;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/eW;->a(Lcom/android/settings/fa;Lcom/android/settings/fa;)I

    move-result v0

    return v0
.end method
