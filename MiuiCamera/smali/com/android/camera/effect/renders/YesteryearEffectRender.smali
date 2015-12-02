.class public Lcom/android/camera/effect/renders/YesteryearEffectRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source "YesteryearEffectRender.java"


# static fields
.field private static final B_TRANS:[I

.field private static final G_TRANS:[I

.field private static final R_TRANS:[I

.field private static sRGBTransBuffer:Ljava/nio/Buffer;

.field private static final sTextureId:[I


# instance fields
.field private mTextureId:I

.field private mTextureLoaded:Z

.field private mUniformTextureRGB:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/effect/renders/YesteryearEffectRender;->sTextureId:[I

    .line 14
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/effect/renders/YesteryearEffectRender;->R_TRANS:[I

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/effect/renders/YesteryearEffectRender;->G_TRANS:[I

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/effect/renders/YesteryearEffectRender;->B_TRANS:[I

    return-void

    .line 14
    nop

    :array_0
    .array-data 4
        0x3b
        0x3b
        0x3b
        0x3b
        0x3b
        0x3b
        0x3b
        0x3b
        0x3b
        0x3b
        0x3c
        0x3c
        0x3c
        0x3c
        0x3c
        0x3c
        0x3d
        0x3d
        0x3e
        0x3e
        0x3e
        0x3e
        0x3e
        0x3e
        0x3f
        0x3d
        0x3e
        0x3e
        0x3f
        0x3f
        0x41
        0x41
        0x41
        0x42
        0x42
        0x42
        0x43
        0x44
        0x44
        0x44
        0x45
        0x45
        0x46
        0x46
        0x46
        0x47
        0x48
        0x48
        0x48
        0x49
        0x49
        0x49
        0x4b
        0x4c
        0x4d
        0x4d
        0x4d
        0x4e
        0x4f
        0x4f
        0x4f
        0x50
        0x51
        0x51
        0x53
        0x54
        0x54
        0x54
        0x56
        0x56
        0x58
        0x58
        0x59
        0x58
        0x58
        0x58
        0x5c
        0x5e
        0x5f
        0x5f
        0x61
        0x61
        0x62
        0x62
        0x65
        0x66
        0x67
        0x67
        0x69
        0x6b
        0x6c
        0x6c
        0x6e
        0x6f
        0x6f
        0x6f
        0x72
        0x73
        0x74
        0x74
        0x76
        0x78
        0x79
        0x79
        0x7b
        0x7e
        0x7f
        0x7f
        0x81
        0x82
        0x84
        0x84
        0x86
        0x87
        0x88
        0x88
        0x8b
        0x8c
        0x8e
        0x8e
        0x91
        0x92
        0x93
        0x93
        0x95
        0x97
        0x98
        0x98
        0x98
        0x9d
        0x9f
        0x9f
        0x9f
        0xa3
        0xa3
        0xa5
        0xa5
        0xa6
        0xa7
        0xa9
        0xa9
        0xad
        0xae
        0xae
        0xae
        0xb1
        0xb2
        0xb4
        0xb4
        0xb6
        0xb7
        0xb9
        0xb9
        0xba
        0xbc
        0xbd
        0xbd
        0xbf
        0xc0
        0xc1
        0xc1
        0xc5
        0xc6
        0xc7
        0xc7
        0xc8
        0xc9
        0xca
        0xca
        0xcc
        0xcd
        0xce
        0xce
        0xd0
        0xd1
        0xd2
        0xd2
        0xd3
        0xd5
        0xd6
        0xd6
        0xd8
        0xd9
        0xd9
        0xd9
        0xda
        0xd9
        0xda
        0xda
        0xdc
        0xdc
        0xde
        0xde
        0xdf
        0xdf
        0xdf
        0xdf
        0xe1
        0xe2
        0xe3
        0xe3
        0xe4
        0xe4
        0xe5
        0xe5
        0xe5
        0xe7
        0xe7
        0xe7
        0xe6
        0xe7
        0xe7
        0xe7
        0xe8
        0xea
        0xe9
        0xe9
        0xe9
        0xe9
        0xea
        0xea
        0xeb
        0xec
        0xec
        0xec
        0xee
        0xed
        0xed
        0xed
        0xef
        0xed
        0xee
        0xee
        0xef
        0xef
        0xf0
        0xf0
        0xf1
        0xf2
        0xf0
        0xf0
        0xf1
        0xf1
        0xf2
        0xf2
        0xf3
        0xf3
        0xf2
        0xf2
        0xf3
        0xf1
        0xf2
        0xf2
        0xf4
        0xf5
        0xf5
    .end array-data

    .line 29
    :array_1
    .array-data 4
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x6
        0x6
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x8
        0x8
        0xa
        0xa
        0xc
        0xc
        0xd
        0xd
        0xe
        0xe
        0xf
        0xf
        0x11
        0x11
        0x13
        0x14
        0x14
        0x14
        0x15
        0x16
        0x16
        0x16
        0x19
        0x19
        0x1a
        0x1a
        0x1c
        0x1d
        0x1e
        0x1e
        0x1f
        0x20
        0x20
        0x20
        0x22
        0x23
        0x24
        0x24
        0x27
        0x28
        0x29
        0x29
        0x29
        0x2a
        0x2b
        0x2b
        0x2d
        0x2e
        0x2e
        0x2e
        0x33
        0x33
        0x35
        0x35
        0x36
        0x37
        0x37
        0x37
        0x39
        0x3b
        0x3c
        0x3c
        0x3e
        0x3e
        0x3f
        0x3f
        0x40
        0x41
        0x43
        0x43
        0x45
        0x47
        0x48
        0x48
        0x4a
        0x4b
        0x4b
        0x4b
        0x4e
        0x4f
        0x50
        0x50
        0x52
        0x54
        0x56
        0x56
        0x58
        0x58
        0x59
        0x59
        0x5b
        0x5c
        0x5d
        0x5d
        0x5f
        0x60
        0x61
        0x61
        0x64
        0x65
        0x66
        0x66
        0x69
        0x6a
        0x6b
        0x6b
        0x6d
        0x6f
        0x70
        0x70
        0x70
        0x73
        0x75
        0x75
        0x75
        0x79
        0x7a
        0x7c
        0x7c
        0x7d
        0x7e
        0x80
        0x80
        0x82
        0x83
        0x84
        0x84
        0x87
        0x88
        0x8a
        0x8a
        0x8c
        0x8d
        0x8f
        0x8f
        0x91
        0x93
        0x94
        0x94
        0x96
        0x97
        0x98
        0x98
        0x99
        0x9b
        0x9c
        0x9c
        0x9f
        0xa0
        0xa2
        0xa2
        0xa4
        0xa5
        0xa6
        0xa6
        0xa8
        0xa9
        0xaa
        0xaa
        0xac
        0xae
        0xaf
        0xaf
        0xb1
        0xb2
        0xb4
        0xb4
        0xb5
        0xb6
        0xb7
        0xb7
        0xb9
        0xb9
        0xbb
        0xbb
        0xbd
        0xbd
        0xbd
        0xbd
        0xbf
        0xc0
        0xc1
        0xc1
        0xc3
        0xc3
        0xc4
        0xc4
        0xc6
        0xc8
        0xc8
        0xc8
        0xca
        0xcb
        0xcb
        0xcb
        0xcc
        0xce
        0xce
        0xce
        0xd2
        0xd2
        0xd3
        0xd3
        0xd4
        0xd5
        0xd6
        0xd6
        0xd6
        0xd7
        0xd9
        0xd9
        0xdb
        0xdc
        0xdd
        0xdd
        0xde
        0xdd
        0xdf
        0xdf
        0xe1
        0xe3
        0xe4
        0xe4
        0xe6
        0xe6
        0xe7
        0xe7
        0xea
        0xea
        0xec
        0xec
        0xef
        0xef
        0xf0
        0xf0
        0xf4
        0xf5
        0xf5
    .end array-data

    .line 43
    :array_2
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x7
        0x7
        0x7
        0x7
        0x8
        0x8
        0x9
        0x9
        0x9
        0x9
        0xa
        0xa
        0xa
        0xa
        0xb
        0xb
        0xd
        0xe
        0xe
        0xe
        0xf
        0xf
        0xf
        0xf
        0x11
        0x11
        0x12
        0x12
        0x13
        0x14
        0x14
        0x14
        0x16
        0x17
        0x17
        0x17
        0x19
        0x19
        0x1a
        0x1a
        0x1a
        0x1b
        0x1c
        0x1c
        0x1c
        0x1d
        0x1d
        0x1d
        0x1f
        0x20
        0x20
        0x20
        0x21
        0x21
        0x22
        0x22
        0x23
        0x24
        0x24
        0x24
        0x25
        0x27
        0x28
        0x28
        0x2a
        0x2a
        0x2b
        0x2b
        0x2c
        0x2d
        0x2c
        0x2c
        0x2e
        0x30
        0x31
        0x31
        0x33
        0x34
        0x34
        0x34
        0x35
        0x34
        0x35
        0x35
        0x37
        0x39
        0x39
        0x39
        0x3b
        0x3a
        0x3b
        0x3b
        0x3d
        0x3e
        0x3d
        0x3d
        0x3f
        0x41
        0x42
        0x42
        0x43
        0x44
        0x44
        0x44
        0x44
        0x44
        0x45
        0x45
        0x47
        0x49
        0x4a
        0x4a
        0x4a
        0x4e
        0x4e
        0x4b
        0x4b
        0x50
        0x4f
        0x51
        0x51
        0x52
        0x53
        0x56
        0x56
        0x57
        0x58
        0x56
        0x56
        0x59
        0x5a
        0x5d
        0x5d
        0x5d
        0x5e
        0x5f
        0x5f
        0x5e
        0x5e
        0x5f
        0x5f
        0x62
        0x63
        0x64
        0x64
        0x67
        0x65
        0x67
        0x67
        0x6a
        0x6c
        0x6a
        0x6a
        0x6c
        0x6d
        0x6e
        0x6e
        0x71
        0x72
        0x73
        0x73
        0x72
        0x75
        0x76
        0x76
        0x78
        0x7a
        0x78
        0x78
        0x7a
        0x7b
        0x7c
        0x7c
        0x7f
        0x7f
        0x82
        0x82
        0x80
        0x80
        0x80
        0x80
        0x83
        0x84
        0x85
        0x85
        0x88
        0x89
        0x8a
        0x8a
        0x8a
        0x8d
        0x8d
        0x8d
        0x8f
        0x91
        0x91
        0x91
        0x92
        0x95
        0x95
        0x95
        0x96
        0x96
        0x98
        0x98
        0x99
        0x9b
        0x9c
        0x9c
        0x9f
        0x9e
        0x9f
        0x9f
        0x9f
        0x9f
        0xa3
        0xa3
        0xa5
        0xa6
        0xa6
        0xa6
        0xa9
        0xa8
        0xa5
        0xa5
        0xab
        0xab
        0xac
        0xac
        0xaf
        0xaf
        0xb1
        0xb1
        0xb1
        0xb1
        0xb2
        0xb2
        0xb4
        0xb5
        0xb5
    .end array-data
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "id"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 86
    return-void
.end method

.method private getBuffer()Ljava/nio/Buffer;
    .locals 4

    .prologue
    .line 146
    sget-object v2, Lcom/android/camera/effect/renders/YesteryearEffectRender;->sRGBTransBuffer:Ljava/nio/Buffer;

    if-nez v2, :cond_1

    .line 147
    sget-object v2, Lcom/android/camera/effect/renders/YesteryearEffectRender;->R_TRANS:[I

    array-length v2, v2

    new-array v0, v2, [I

    .line 148
    .local v0, "RGB_TRANS":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 149
    const/high16 v2, -0x1000000

    sget-object v3, Lcom/android/camera/effect/renders/YesteryearEffectRender;->B_TRANS:[I

    aget v3, v3, v1

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    sget-object v3, Lcom/android/camera/effect/renders/YesteryearEffectRender;->G_TRANS:[I

    aget v3, v3, v1

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    sget-object v3, Lcom/android/camera/effect/renders/YesteryearEffectRender;->R_TRANS:[I

    aget v3, v3, v1

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v2

    sput-object v2, Lcom/android/camera/effect/renders/YesteryearEffectRender;->sRGBTransBuffer:Ljava/nio/Buffer;

    .line 153
    .end local v0    # "RGB_TRANS":[I
    .end local v1    # "i":I
    :cond_1
    sget-object v2, Lcom/android/camera/effect/renders/YesteryearEffectRender;->sRGBTransBuffer:Ljava/nio/Buffer;

    return-object v2
.end method

.method private initIntTexture(Ljava/nio/Buffer;I)V
    .locals 11
    .param p1, "buffer"    # Ljava/nio/Buffer;
    .param p2, "textureid"    # I

    .prologue
    const v10, 0x812f

    const/16 v2, 0x1908

    const/high16 v9, 0x46180000    # 9728.0f

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 115
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 116
    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 117
    const/16 v3, 0x100

    const/4 v4, 0x1

    const/16 v7, 0x1401

    move v5, v1

    move v6, v2

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 120
    const/16 v1, 0x2802

    invoke-static {v0, v1, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 122
    const/16 v1, 0x2803

    invoke-static {v0, v1, v10}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 124
    const/16 v1, 0x2801

    invoke-static {v0, v1, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 126
    const/16 v1, 0x2800

    invoke-static {v0, v1, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 129
    return-void
.end method

.method private prepareExtraTexture()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/YesteryearEffectRender;->mTextureLoaded:Z

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 108
    :cond_0
    sget-object v0, Lcom/android/camera/effect/renders/YesteryearEffectRender;->sTextureId:[I

    invoke-static {v2, v0, v1}, Lcom/android/gallery3d/ui/GLId;->glGenTextures(I[II)V

    .line 109
    sget-object v0, Lcom/android/camera/effect/renders/YesteryearEffectRender;->sTextureId:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/YesteryearEffectRender;->mTextureId:I

    .line 110
    invoke-direct {p0}, Lcom/android/camera/effect/renders/YesteryearEffectRender;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/effect/renders/YesteryearEffectRender;->mTextureId:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/effect/renders/YesteryearEffectRender;->initIntTexture(Ljava/nio/Buffer;I)V

    .line 111
    iput-boolean v2, p0, Lcom/android/camera/effect/renders/YesteryearEffectRender;->mTextureLoaded:Z

    goto :goto_0
.end method


# virtual methods
.method protected bindExtraTexture()V
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lcom/android/camera/effect/renders/YesteryearEffectRender;->mTextureId:I

    const v1, 0x84c1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/YesteryearEffectRender;->bindTexture(II)Z

    .line 104
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/YesteryearEffectRender;->mTextureLoaded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/renders/YesteryearEffectRender;->mTextureId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/YesteryearEffectRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete YesteryearEffectRender texture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/YesteryearEffectRender;->mTextureId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/camera/effect/renders/YesteryearEffectRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget v1, p0, Lcom/android/camera/effect/renders/YesteryearEffectRender;->mTextureId:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->deleteTexture(I)Z

    .line 142
    :cond_0
    invoke-super {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->finalize()V

    .line 143
    return-void
.end method

.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "precision mediump int; \nprecision mediump float; \nvarying vec2 vTexCoord; \nuniform sampler2D sTexture; \nuniform sampler2D s_rgb_lut; \nuniform float uAlpha; \nvoid main() \n{ \n  float ratio = 255.0 / 256.0; \n  vec4 color = texture2D(sTexture, vTexCoord); \n  float r = texture2D(s_rgb_lut, vec2(color.r * ratio, 0.0)).r; \n  float g = texture2D(s_rgb_lut, vec2(color.g * ratio, 0.0)).g; \n  float b = texture2D(s_rgb_lut, vec2(color.b * ratio, 0.0)).b; \n  gl_FragColor = vec4(r,g,b,1.0)*uAlpha; \n} \n"

    return-object v0
.end method

.method protected initShader()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShader()V

    .line 91
    iget v0, p0, Lcom/android/camera/effect/renders/YesteryearEffectRender;->mProgram:I

    const-string v1, "s_rgb_lut"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/YesteryearEffectRender;->mUniformTextureRGB:I

    .line 92
    invoke-direct {p0}, Lcom/android/camera/effect/renders/YesteryearEffectRender;->prepareExtraTexture()V

    .line 93
    return-void
.end method

.method protected initShaderValue(Z)V
    .locals 2
    .param p1, "isSnapShot"    # Z

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShaderValue(Z)V

    .line 98
    iget v0, p0, Lcom/android/camera/effect/renders/YesteryearEffectRender;->mUniformTextureRGB:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 99
    return-void
.end method
