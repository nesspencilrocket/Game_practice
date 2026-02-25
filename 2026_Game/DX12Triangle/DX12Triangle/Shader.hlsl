// 頂点シェーダーへの入力構造体
struct VSInput
{
    float3 pos : POSITION; // 座標 (x, y, z)
    float4 col : COLOR; // 色 (r, g, b, a)
};

// ピクセルシェーダーへの橋渡し構造体
struct PSInput
{
    float4 pos : SV_POSITION; // システム用座標
    float4 col : COLOR; // 色
};

// 【頂点シェーダー】 座標をそのまま出力するだけ
PSInput VSMain(VSInput input)
{
    PSInput result;
    result.pos = float4(input.pos, 1.0f);
    result.col = input.col;
    return result;
}

// 【ピクセルシェーダー】 色をそのまま出力するだけ
float4 PSMain(PSInput input) : SV_TARGET
{
    return input.col;
}