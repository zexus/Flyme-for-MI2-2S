.class final Lcom/android/settings_ext/H;
.super Ljava/lang/Object;
.source "AppPicker.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final bi:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/H;->bi:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings_ext/J;Lcom/android/settings_ext/J;)I
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/settings_ext/H;->bi:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings_ext/J;->label:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/android/settings_ext/J;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 136
    check-cast p1, Lcom/android/settings_ext/J;

    check-cast p2, Lcom/android/settings_ext/J;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ext/H;->a(Lcom/android/settings_ext/J;Lcom/android/settings_ext/J;)I

    move-result v0

    return v0
.end method
