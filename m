Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D78223E7C4
	for <lists+tipc-discussion@lfdr.de>; Fri,  7 Aug 2020 09:19:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k3weq-00061O-5U; Fri, 07 Aug 2020 07:19:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1k3wep-00061H-2J
 for tipc-discussion@lists.sourceforge.net; Fri, 07 Aug 2020 07:19:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d2T3t9Lmip1QSDYwISNFv4oDhCFreV7+ybaIsFva4kc=; b=eJWp/gusmcFBFCKa61aL1oBqTs
 xu218geRQGPXakf3XlsRuj7PasW3VRZWpKuq8JgB+mWexXjvvU8/USyyNDplSOosYSIm5FR0booyV
 plwzzfjgrNFVIOmb2shrF1WgfBSqQ74hj24W9etAVZmAic8ikMoFjDrk9Q+2QQkHrXAA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=d2T3t9Lmip1QSDYwISNFv4oDhCFreV7+ybaIsFva4kc=; b=EavrAcLq3/nRLJg+Dfe/Il+wue
 3vJjRMqL1cjDYbgyn1qtRtOP+ZLwISt9Xw2WiMFyq2BLP7VbyZnJQahpoSHfqHm6hSXOj5sGTaC5R
 wUmAeWPrBo3cjjxzUA/azX+ahp8KO+e5IQYUptkGNQcild4w+JHXL5V0rtqhuCHb0OKo=;
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k3wen-009fie-MF
 for tipc-discussion@lists.sourceforge.net; Fri, 07 Aug 2020 07:19:15 +0000
Received: by mail-wr1-f65.google.com with SMTP id a15so689332wrh.10
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 07 Aug 2020 00:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=d2T3t9Lmip1QSDYwISNFv4oDhCFreV7+ybaIsFva4kc=;
 b=S6jUyYGtTWAGs9N6MOWwZZDHBMGf+CKcmvgcJKcy03/3nFDtNSXsZFxy6Hpl+4TcBP
 F03iRVcIe7JyE8wRoB9/9VbO/uUMAJgm8bJwePe3hBIYsmn7Nfhej5Ka8+oGGipTOHq6
 wgCiesbyRlDGWBrhEpXtyuDZTEBfdeLc40YD5ArgKAYtkEWsWVyuptfvVdX7kGYVUABM
 owq0eIjQqRchDtyuV1Ihu2nth4x3lvAqqp+LGNpmEa+8QCi2A4mgPdz05bl9Eh6MdSCZ
 wWz30gBPzFFMxtkA2K06N79jZYJRDlfuUn4oLWFcdvVWJYYClvlcT61XwczE/el75wkm
 5sTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=d2T3t9Lmip1QSDYwISNFv4oDhCFreV7+ybaIsFva4kc=;
 b=EzCm716G76ed0p5oPvL/K5qGQVjMCxz+gJh0ztLI/0G/UFO/bsZyNsmfWo8F6oOEv4
 tP+eK0/SnldUmyx5G9kY4dn6XwlxSJRCvhsF7sXBiC0tJa3KbzbV9uHngqt66Hvj0dLi
 oTsx/h9RBcty14qv+3sO1Nb2TXGLjEYG1OVPovmn2VBljejXXW/GbAeeIHM463aHerVO
 3cPqo0Fhte4Nh0Jz7LqtCI0dGxO1MDEDRlpAnpkul+DtvGCRtS/3dymJ2yiubtIM/Z0w
 xWchRqCqfsUE8A6HJO+/7ykQFG3R43vNjAMrVqCm6v1IOyWgkszl/VfTTgwh00b1uL/G
 IONg==
X-Gm-Message-State: AOAM533NAHr9aVY0nIa9uBB/2VT0OixBZMijmCOG5Jyh/XN53vhGiPx/
 bhgSE400zMXqdqdBMDYPYUN48As98H0DAUW7mwM=
X-Google-Smtp-Source: ABdhPJyHsW0q5++Rz1EhEe9OOA/wEeiAlIuH6k+8Gs+yKaXLwYQYu5ihQ9I+ijplJf3iixQMEOZ2naS89PzU1rAimGw=
X-Received: by 2002:adf:df89:: with SMTP id z9mr10810430wrl.395.1596784747339; 
 Fri, 07 Aug 2020 00:19:07 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1596468610.git.lucien.xin@gmail.com>
 <7ba2ca17347249b980731e7a76ba3e24a9e37720.1596468610.git.lucien.xin@gmail.com>
 <CAPA1RqCz=h-RBu-md1rJ5WLWsr9LLqO8bK9D=q6_vzYMz7564A@mail.gmail.com>
 <CADvbK_dSnrBkw_hJV8LVCEs9D-WB+h2QC3JghLCxVwV5PW9YYA@mail.gmail.com>
 <1f510387-b612-6cb4-8ee6-ff52f6ff6796@gmail.com>
In-Reply-To: <1f510387-b612-6cb4-8ee6-ff52f6ff6796@gmail.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Fri, 7 Aug 2020 15:30:58 +0800
Message-ID: <CADvbK_f+NK9Zf+t-7xfzA7T8Xftw+CdoEW6jy=V6TDqT6PQ_AA@mail.gmail.com>
To: David Ahern <dsahern@gmail.com>, Ying Xue <ying.xue@windriver.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: miraclelinux.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.65 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1k3wen-009fie-MF
Subject: Re: [tipc-discussion] [PATCH net 1/2] ipv6: add ipv6_dev_find()
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: Jon Maloy <jon.maloy@ericsson.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 network dev <netdev@vger.kernel.org>,
 Hideaki Yoshifuji <hideaki.yoshifuji@miraclelinux.com>,
 tipc-discussion@lists.sourceforge.net, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 davem <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

T24gVGh1LCBBdWcgNiwgMjAyMCBhdCAxMDowMyBQTSBEYXZpZCBBaGVybiA8ZHNhaGVybkBnbWFp
bC5jb20+IHdyb3RlOgo+Cj4gT24gOC82LzIwIDI6NTUgQU0sIFhpbiBMb25nIHdyb3RlOgo+ID4g
T24gVGh1LCBBdWcgNiwgMjAyMCBhdCAxMDo1MCBBTSBIaWRlYWtpIFlvc2hpZnVqaQo+ID4gPGhp
ZGVha2kueW9zaGlmdWppQG1pcmFjbGVsaW51eC5jb20+IHdyb3RlOgo+ID4+Cj4gPj4gSGksCj4g
Pj4KPiA+PiAyMDIw5bm0OOaciDTml6Uo54GrKSAwOjM1IFhpbiBMb25nIDxsdWNpZW4ueGluQGdt
YWlsLmNvbT46Cj4gPj4+Cj4gPj4+IFRoaXMgaXMgdG8gYWRkIGFuIGlwX2Rldl9maW5kIGxpa2Ug
ZnVuY3Rpb24gZm9yIGlwdjYsIHVzZWQgdG8gZmluZAo+ID4+PiB0aGUgZGV2IGJ5IHNhZGRyLgo+
ID4+Pgo+ID4+PiBJdCB3aWxsIGJlIHVzZWQgYnkgVElQQyBwcm90b2NvbC4gU28gYWxzbyBleHBv
cnQgaXQuCj4gPj4+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IFhpbiBMb25nIDxsdWNpZW4ueGluQGdt
YWlsLmNvbT4KPiA+Pj4gLS0tCj4gPj4+ICBpbmNsdWRlL25ldC9hZGRyY29uZi5oIHwgIDIgKysK
PiA+Pj4gIG5ldC9pcHY2L2FkZHJjb25mLmMgICAgfCAzOSArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysKPiA+Pj4gIDIgZmlsZXMgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygr
KQo+ID4+Pgo+ID4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9uZXQvYWRkcmNvbmYuaCBiL2luY2x1
ZGUvbmV0L2FkZHJjb25mLmgKPiA+Pj4gaW5kZXggODQxOGI3ZC4uYmEzZjZjMTUgMTAwNjQ0Cj4g
Pj4+IC0tLSBhL2luY2x1ZGUvbmV0L2FkZHJjb25mLmgKPiA+Pj4gKysrIGIvaW5jbHVkZS9uZXQv
YWRkcmNvbmYuaAo+ID4+PiBAQCAtOTcsNiArOTcsOCBAQCBib29sIGlwdjZfY2hrX2N1c3RvbV9w
cmVmaXgoY29uc3Qgc3RydWN0IGluNl9hZGRyICphZGRyLAo+ID4+Pgo+ID4+PiAgaW50IGlwdjZf
Y2hrX3ByZWZpeChjb25zdCBzdHJ1Y3QgaW42X2FkZHIgKmFkZHIsIHN0cnVjdCBuZXRfZGV2aWNl
ICpkZXYpOwo+ID4+Pgo+ID4+PiArc3RydWN0IG5ldF9kZXZpY2UgKmlwdjZfZGV2X2ZpbmQoc3Ry
dWN0IG5ldCAqbmV0LCBjb25zdCBzdHJ1Y3QgaW42X2FkZHIgKmFkZHIpOwo+ID4+PiArCj4gPj4K
PiA+PiBIb3cgZG8gd2UgaGFuZGxlIGxpbmstbG9jYWwgYWRkcmVzc2VzPwo+ID4gVGhpcyBpcyB3
aGF0ICJpZiAoIXJlc3VsdCkiIGJyYW5jaCBtZWFudCB0byBkbzoKPiA+Cj4gPiArICAgICAgIGlm
ICghcmVzdWx0KSB7Cj4gPiArICAgICAgICAgICAgICAgc3RydWN0IHJ0Nl9pbmZvICpydDsKPiA+
ICsKPiA+ICsgICAgICAgICAgICAgICBydCA9IHJ0Nl9sb29rdXAobmV0LCBhZGRyLCBOVUxMLCAw
LCBOVUxMLCAwKTsKPiA+ICsgICAgICAgICAgICAgICBpZiAocnQpIHsKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgIGRldiA9IHJ0LT5kc3QuZGV2Owo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgaXA2X3J0X3B1dChydCk7Cj4gPiArICAgICAgICAgICAgICAgfQo+ID4gKyAgICAgICB9IGVs
c2Ugewo+ID4gKyAgICAgICAgICAgICAgIGRldiA9IHJlc3VsdC0+aWRldi0+ZGV2Owo+ID4gKyAg
ICAgICB9Cj4gPgo+Cj4gdGhlIHN0YXRlZCBwdXJwb3NlIG9mIHRoaXMgZnVuY3Rpb24gaXMgdG8g
ZmluZCB0aGUgbmV0ZGV2aWNlIHRvIHdoaWNoIGFuCj4gYWRkcmVzcyBpcyBhdHRhY2hlZC4gQSBy
b3V0ZSBsb29rdXAgc2hvdWxkIG5vdCBiZSBuZWVkZWQuIFdhbGtpbmcgdGhlCj4gYWRkcmVzcyBo
YXNoIGxpc3QgZmluZHMgdGhlIGFkZHJlc3MgYW5kIGhlbmNlIHRoZSBuZXRkZXYgb3IgaXQgZG9l
cyBub3QuCkhpLCBEYXZpZCwKU29ycnkuIGl0IGRvZXMuIEkgbWlzdW5kZXJzdG9vZCB0aGUgY29k
ZSBpbiBfX2lwX2Rldl9maW5kKCkuCkkgd2lsbCBkZWxldGUgdGhlIHJ0Nl9sb29rdXAoKSBwYXJ0
IGZyb20gaXB2Nl9kZXZfZmluZCgpLgoKQWxzbyBmb3IgdGhlIGNvbXBhdGliaWxpdHksIHRpcGMg
cGFydCBzaG91bGQgY2hhbmdlIHRvOgpAQCAtNzQxLDEwICs3NDEsOCBAQCBzdGF0aWMgaW50IHRp
cGNfdWRwX2VuYWJsZShzdHJ1Y3QgbmV0ICpuZXQsCnN0cnVjdCB0aXBjX2JlYXJlciAqYiwKICAg
ICAgICAgICAgICAgIHN0cnVjdCBuZXRfZGV2aWNlICpkZXY7CgogICAgICAgICAgICAgICBkZXYg
PSBpcHY2X2Rldl9maW5kKG5ldCwgJmxvY2FsLmlwdjYpOwogICAgICAgICAgICAgICBpZiAoIWRl
dikKICAgICAgICAgICAgICAgICAgICAgIHViLT5pZmluZGV4ID0gZGV2LT5pZmluZGV4OwoKYXMg
d2hlbiBkZXYgaXMgbm90IGZvdW5kIGZyb20gdGhlIGhhc2ggbGlzdCwgaXQgc2hvdWxkIGZhbGwg
YmFjayB0bwp0aGUgb2xkIHRpcGMgY29kZS4KCllpbmcsIHdoYXQgZG8geW91IHRoaW5rPwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnRpcGMtZGlzY3Vz
c2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApo
dHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Np
b24K
