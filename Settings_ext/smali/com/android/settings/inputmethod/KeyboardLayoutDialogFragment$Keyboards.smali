.class public final Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;
.super Ljava/lang/Object;
.source "KeyboardLayoutDialogFragment.java"


# instance fields
.field public final abJ:Ljava/util/ArrayList;

.field public abK:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->abJ:Ljava/util/ArrayList;

    .line 362
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$Keyboards;->abK:I

    return-void
.end method
