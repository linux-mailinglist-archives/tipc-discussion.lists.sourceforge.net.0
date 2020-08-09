Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F14B23FDB9
	for <lists+tipc-discussion@lfdr.de>; Sun,  9 Aug 2020 12:52:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k4iwT-0002p5-8S; Sun, 09 Aug 2020 10:52:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1k4iwS-0002oy-4G
 for tipc-discussion@lists.sourceforge.net; Sun, 09 Aug 2020 10:52:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+kQ1KrsIJ+FkTFLVFU2A1N4jx4X8shYKGwpY2heK7PY=; b=MOovv5xX1BRv23eb6IWrgsRX/+
 scpSkojG0suvlm4Ef2zgGosWZy2g9Gdjt7kpKpSpafADQwVo0AvmspPRX+rq2sKrEsSHvjOohTnEl
 8nRHPACw/7G43p5sXnEjCGkKfcJlHE+n9NnfVFwxgHIVtBYABUZnr06LSYE9pk/aOJ5c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+kQ1KrsIJ+FkTFLVFU2A1N4jx4X8shYKGwpY2heK7PY=; b=OcEBqusEpTF2TqxhZ3P2HxLLKc
 +SaJ29HvzKUxufIueLPMEoALKmui5xgcn1fJ0jKpcglGeVfGUA3h50i3kT7doZDxdI+xVhJaGL86K
 vMihOICFhtQ5Tyzq3U9wFCaSfRZAhu1QRYj0eSKBYGfDkilOygieSiFIEKWbSN8hrQzo=;
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k4iwO-00HNRt-4r
 for tipc-discussion@lists.sourceforge.net; Sun, 09 Aug 2020 10:52:40 +0000
Received: by mail-wr1-f68.google.com with SMTP id r4so5553000wrx.9
 for <tipc-discussion@lists.sourceforge.net>;
 Sun, 09 Aug 2020 03:52:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+kQ1KrsIJ+FkTFLVFU2A1N4jx4X8shYKGwpY2heK7PY=;
 b=E2QNeO8VJ5bN6g3rujjALFmYlqdGWDLjA1DuwgL5wY7sNYAwk3eE4YrK90OEqANebJ
 T4Tmgd7rlcdZlr0nA9TAVCSMLFElTqWWT6BeMFHA0WGmuUTVy35L2nbsy9Rs4Ss0rxgG
 +CKKSeUjV9BlF/mD5MRRFf05TLq9velrVV5XNCzRVqIVw21SiDHrWfWAibtFHE18k1Ln
 68QN9QTbi65b4CNJUa/EkRQ4YMKJZD2NIk5+mOf+OG5XkzGgK9CKmTzoZ1JrbwKCRZ1I
 vQorQXM2PERpFTxQ6F/pSkgQwhrln5HydlhoN83E5IIdsZxB1O/kTHH7qGxYfKVLt0g4
 9NiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+kQ1KrsIJ+FkTFLVFU2A1N4jx4X8shYKGwpY2heK7PY=;
 b=NLSXCTLMv4cNnYP1qnUVzDIzrumy5cY4RzL+n2HoKSJmKE7wX/RZ05Npj8touGUhss
 x+dovIacFN/c1dHHU3SK2prx2E8dFBIw6PXz7KloDR7CSu1gHaWMIsoJIUwY6w2nph+3
 vVfA5YHsag3ZDKg/ePlJ3Cfi5WjgpieyX1Qz6SyYFqu0h5+5resc59fqJI82X5/9VR1k
 AV1am8CclB7kuEvDFDSmSVjxPu728mHMP5cC+LrrnlfVD8tmF1ghbmYVspp+96sgtVFv
 e/qfrB3jmCa37ZRRJLVSnfpd5o5mG6qzvRyope8ohFpEBCjvot5gAZOz/5aiEu6cVv7A
 1GmQ==
X-Gm-Message-State: AOAM531/jW5W4hkzQRmyUUGdybSOxTT+3Rzh/+tJ+ydjqtwVQGu64FNN
 EKXvEUkzimuhcH2LPi8TdY0jbWEXIRNDhcNuP5E=
X-Google-Smtp-Source: ABdhPJx8G9rbY/hJ7hzU15iFMZ6kUYOUYAAFwjobxbuT4i25VETaH90hk7slhIdDB/2tPJm4q58Sh03FO6jy5g7vaC8=
X-Received: by 2002:adf:fd91:: with SMTP id d17mr19118093wrr.234.1596970342782; 
 Sun, 09 Aug 2020 03:52:22 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1596468610.git.lucien.xin@gmail.com>
 <7ba2ca17347249b980731e7a76ba3e24a9e37720.1596468610.git.lucien.xin@gmail.com>
 <CAPA1RqCz=h-RBu-md1rJ5WLWsr9LLqO8bK9D=q6_vzYMz7564A@mail.gmail.com>
 <CADvbK_dSnrBkw_hJV8LVCEs9D-WB+h2QC3JghLCxVwV5PW9YYA@mail.gmail.com>
 <1f510387-b612-6cb4-8ee6-ff52f6ff6796@gmail.com>
 <CAPA1RqAFkQG-LBTcj80nt4CbWnE7ni+wgCBJU3-up7ROoR9-3w@mail.gmail.com>
In-Reply-To: <CAPA1RqAFkQG-LBTcj80nt4CbWnE7ni+wgCBJU3-up7ROoR9-3w@mail.gmail.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Sun, 9 Aug 2020 19:04:21 +0800
Message-ID: <CADvbK_eEQJUEZuJh4TwxFedR3qawt0HTyQ28rVeZVzecLk5_Ow@mail.gmail.com>
To: Hideaki Yoshifuji <hideaki.yoshifuji@miraclelinux.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: miraclelinux.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1k4iwO-00HNRt-4r
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
Cc: Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 network dev <netdev@vger.kernel.org>, tipc-discussion@lists.sourceforge.net,
 David Ahern <dsahern@gmail.com>, Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>,
 davem <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

T24gRnJpLCBBdWcgNywgMjAyMCBhdCA1OjI2IFBNIEhpZGVha2kgWW9zaGlmdWppCjxoaWRlYWtp
Lnlvc2hpZnVqaUBtaXJhY2xlbGludXguY29tPiB3cm90ZToKPgo+IEhpLAo+Cj4gMjAyMOW5tDjm
nIg25pelKOacqCkgMjM6MDMgRGF2aWQgQWhlcm4gPGRzYWhlcm5AZ21haWwuY29tPjoKPiA+Cj4g
PiBPbiA4LzYvMjAgMjo1NSBBTSwgWGluIExvbmcgd3JvdGU6Cj4gPiA+IE9uIFRodSwgQXVnIDYs
IDIwMjAgYXQgMTA6NTAgQU0gSGlkZWFraSBZb3NoaWZ1amkKPiA+ID4gPGhpZGVha2kueW9zaGlm
dWppQG1pcmFjbGVsaW51eC5jb20+IHdyb3RlOgo+ID4gPj4KPiA+ID4+IEhpLAo+ID4gPj4KPiA+
ID4+IDIwMjDlubQ45pyINOaXpSjngaspIDA6MzUgWGluIExvbmcgPGx1Y2llbi54aW5AZ21haWwu
Y29tPjoKPiA+ID4+Pgo+ID4gPj4+IFRoaXMgaXMgdG8gYWRkIGFuIGlwX2Rldl9maW5kIGxpa2Ug
ZnVuY3Rpb24gZm9yIGlwdjYsIHVzZWQgdG8gZmluZAo+ID4gPj4+IHRoZSBkZXYgYnkgc2FkZHIu
Cj4gPiA+Pj4KPiA+ID4+PiBJdCB3aWxsIGJlIHVzZWQgYnkgVElQQyBwcm90b2NvbC4gU28gYWxz
byBleHBvcnQgaXQuCj4gPiA+Pj4KPiA+ID4+PiBTaWduZWQtb2ZmLWJ5OiBYaW4gTG9uZyA8bHVj
aWVuLnhpbkBnbWFpbC5jb20+Cj4gPiA+Pj4gLS0tCj4gPiA+Pj4gIGluY2x1ZGUvbmV0L2FkZHJj
b25mLmggfCAgMiArKwo+ID4gPj4+ICBuZXQvaXB2Ni9hZGRyY29uZi5jICAgIHwgMzkgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiA+Pj4gIDIgZmlsZXMgY2hhbmdl
ZCwgNDEgaW5zZXJ0aW9ucygrKQo+ID4gPj4+Cj4gPiA+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUv
bmV0L2FkZHJjb25mLmggYi9pbmNsdWRlL25ldC9hZGRyY29uZi5oCj4gPiA+Pj4gaW5kZXggODQx
OGI3ZC4uYmEzZjZjMTUgMTAwNjQ0Cj4gPiA+Pj4gLS0tIGEvaW5jbHVkZS9uZXQvYWRkcmNvbmYu
aAo+ID4gPj4+ICsrKyBiL2luY2x1ZGUvbmV0L2FkZHJjb25mLmgKPiA+ID4+PiBAQCAtOTcsNiAr
OTcsOCBAQCBib29sIGlwdjZfY2hrX2N1c3RvbV9wcmVmaXgoY29uc3Qgc3RydWN0IGluNl9hZGRy
ICphZGRyLAo+ID4gPj4+Cj4gPiA+Pj4gIGludCBpcHY2X2Noa19wcmVmaXgoY29uc3Qgc3RydWN0
IGluNl9hZGRyICphZGRyLCBzdHJ1Y3QgbmV0X2RldmljZSAqZGV2KTsKPiA+ID4+Pgo+ID4gPj4+
ICtzdHJ1Y3QgbmV0X2RldmljZSAqaXB2Nl9kZXZfZmluZChzdHJ1Y3QgbmV0ICpuZXQsIGNvbnN0
IHN0cnVjdCBpbjZfYWRkciAqYWRkcik7Cj4gPiA+Pj4gKwo+ID4gPj4KPiA+ID4+IEhvdyBkbyB3
ZSBoYW5kbGUgbGluay1sb2NhbCBhZGRyZXNzZXM/Cj4gPiA+IFRoaXMgaXMgd2hhdCAiaWYgKCFy
ZXN1bHQpIiBicmFuY2ggbWVhbnQgdG8gZG86Cj4gPiA+Cj4gPiA+ICsgICAgICAgaWYgKCFyZXN1
bHQpIHsKPiA+ID4gKyAgICAgICAgICAgICAgIHN0cnVjdCBydDZfaW5mbyAqcnQ7Cj4gPiA+ICsK
PiA+ID4gKyAgICAgICAgICAgICAgIHJ0ID0gcnQ2X2xvb2t1cChuZXQsIGFkZHIsIE5VTEwsIDAs
IE5VTEwsIDApOwo+ID4gPiArICAgICAgICAgICAgICAgaWYgKHJ0KSB7Cj4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGRldiA9IHJ0LT5kc3QuZGV2Owo+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICBpcDZfcnRfcHV0KHJ0KTsKPiA+ID4gKyAgICAgICAgICAgICAgIH0KPiA+ID4gKyAg
ICAgICB9IGVsc2Ugewo+ID4gPiArICAgICAgICAgICAgICAgZGV2ID0gcmVzdWx0LT5pZGV2LT5k
ZXY7Cj4gPiA+ICsgICAgICAgfQo+ID4gPgo+ID4KPiA+IHRoZSBzdGF0ZWQgcHVycG9zZSBvZiB0
aGlzIGZ1bmN0aW9uIGlzIHRvIGZpbmQgdGhlIG5ldGRldmljZSB0byB3aGljaCBhbgo+ID4gYWRk
cmVzcyBpcyBhdHRhY2hlZC4gQSByb3V0ZSBsb29rdXAgc2hvdWxkIG5vdCBiZSBuZWVkZWQuIFdh
bGtpbmcgdGhlCj4gPiBhZGRyZXNzIGhhc2ggbGlzdCBmaW5kcyB0aGUgYWRkcmVzcyBhbmQgaGVu
Y2UgdGhlIG5ldGRldiBvciBpdCBkb2VzIG5vdC4KPiA+Cj4gPgo+Cj4gVXNlciBzdXBwbGllZCBz
Y29wZSBpZCB3aGljaCBzaG91bGQgYmUgc2V0IGZvciBsaW5rLWxvY2FsIGFkZHJlc3Nlcwo+IGlu
IFRJUENfTkxBX1VEUF9MT0NBTCBhdHRyaWJ1dGUgbXVzdCBiZSBob25vcmVkIHdoZW4gd2UKPiBj
aGVjayB0aGUgYWRkcmVzcy4KSGksIEhpZGVha2kgc2FuLAoKU29ycnkgZm9yIG5vdCB1bmRlcnN0
YW5kaW5nIHlvdXIgY29tbWVudCBlYXJsaWVyLgoKVGhlIGJhZCB0aGluZyBpcyB0aXBjIGluIGlw
cm91dGUyIGRvZXNuJ3Qgc2VlbSBhYmxlIHRvIHNldCBzY29wZV9pZC4KSSBzYXcgbWFueSBwbGFj
ZXMgaW4ga2VybmVsIGRvaW5nIHRoaXMgY2hlY2s6CgogICAgICAgICAgICAgICAgICAgICAgICAg
aWYgKF9faXB2Nl9hZGRyX25lZWRzX3Njb3BlX2lkKGF0eXBlKSAmJgogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICFpcDYtPnNpbjZfc2NvcGVfaWQpIHsgcmV0dXJuIC1FSU5WQUw7IH0KCkNh
biBJIGFzayB3aHkgc2NvcGUgaWQgaXMgbmVlZGVkIGZvciBsaW5rLWxvY2FsIGFkZHJlc3Nlcz8K
YW5kIGlzIHRoYXQgZm9yIGxpbmstbG9jYWwgYWRkcmVzc2VzIG9ubHk/Cgo+Cj4gaXB2Nl9jaGtf
YWRkcigpIGNhbiBjaGVjayBpZiB0aGUgYWRkcmVzcyBhbmQgc3VwcGxpZWQgaWZpbmRleCBpcyBh
IHZhbGlkCj4gbG9jYWwgYWRkcmVzcy4gIE9yIGludHJvZHVjZSBhbiBleHRyYSBpZmluZGV4IGFy
Z3VtZW50IHRvIGlwdjZfZGV2X2ZpbmQoKS4KWWVhaCwgYnV0IGlmIHNjb3BlIGlkIG1lYW5zIGlm
aW5kZXggZm9yICBsaW5rLWxvY2FsIGFkZHJlc3NlcywgaXB2Nl9kZXZfZmluZCgpCndvdWxkIGJl
IG1vcmUgbGlrZSBhIGZ1bmN0aW9uIHRvIHZhbGlkYXRlIHRoZSBhZGRyZXNzIHdpdGggcmlnaHQg
c2NvcGUgaWQuCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3aW5nLgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxp
c3QKdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24K
