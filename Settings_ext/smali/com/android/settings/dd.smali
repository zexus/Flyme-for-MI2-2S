.class Lcom/android/settings/dd;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ok:Lcom/android/settings/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/settings/MediaFormat;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/settings/dd;->ok:Lcom/android/settings/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/settings/dd;->ok:Lcom/android/settings/MediaFormat;

    invoke-virtual {v0}, Lcom/android/settings/MediaFormat;->finish()V

    .line 287
    return-void
.end method
