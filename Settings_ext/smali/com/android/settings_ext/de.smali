.class Lcom/android/settings_ext/de;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ok:Lcom/android/settings_ext/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MediaFormat;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/settings_ext/de;->ok:Lcom/android/settings_ext/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/settings_ext/de;->ok:Lcom/android/settings_ext/MediaFormat;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/android/settings_ext/MediaFormat;->a(Lcom/android/settings_ext/MediaFormat;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/settings_ext/de;->ok:Lcom/android/settings_ext/MediaFormat;

    invoke-static {v0}, Lcom/android/settings_ext/MediaFormat;->b(Lcom/android/settings_ext/MediaFormat;)V

    .line 282
    :cond_0
    return-void
.end method
