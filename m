Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4E3243D0D
	for <lists+tipc-discussion@lfdr.de>; Thu, 13 Aug 2020 18:13:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k6FrK-0000XD-9o; Thu, 13 Aug 2020 16:13:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1k6FrJ-0000X5-2C
 for tipc-discussion@lists.sourceforge.net; Thu, 13 Aug 2020 16:13:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uNtpikjN5hkd0GhY+r23eU7dwsydeFA2mxTgwagKD18=; b=CgE/AioCMhMIZoX2foqFmkBKXw
 +Md3I662qk9/vajDUd43Jbi+bp4R7OEIUHxkJ8ZY4/CEr4f51pnQNqEXtZfQ+BsVbjgdHgddzmfXU
 pMNzOR6fqL3DfGCF6BNG0531WDcRvFmVJA4HSfmHoDRnZi+/pZ6RuW1LLVAktzc9mRFM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uNtpikjN5hkd0GhY+r23eU7dwsydeFA2mxTgwagKD18=; b=Dq64Q0UCkajTbd6zCtmw2IVN0t
 RMKJmOxf1mCCwbOlS/V2zwXkCTaMZJmDDsLkHVzpV1pCmZedIICv9L+IWW0vlLsOoDolHi2IpPzjM
 dQ3DRsS3ONbdkeUTYyB3pSGdZSsd+RwOOfgXfqL11bsJVcBr8X952BobHckZwt/2qszY=;
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k6FrH-005Tk7-63
 for tipc-discussion@lists.sourceforge.net; Thu, 13 Aug 2020 16:13:41 +0000
Received: by mail-wm1-f68.google.com with SMTP id k20so5541533wmi.5
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 13 Aug 2020 09:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=uNtpikjN5hkd0GhY+r23eU7dwsydeFA2mxTgwagKD18=;
 b=RTZpt5pgVN93t1zNpXz4l8CyGQBA/tqiHavHH3YcodidZPD/kIwMFAJ8uMbOh8ZK6K
 /gN2gjq1UJIpriebOOpO35qlSbmu/7KMfeYmOtBnoMcoiPEn7sTVmE2M7PdzIgUPKbR8
 0PPLgW9hyJorFrRA8Xv2XGLUB3qgbVRth4gMcjVgFgun1Pvio083nQ9uOWzNEn5mHA8C
 2ix9VhBBIz3PSIGU+fJeDuDZz/BpCoiuzy6SOdDaepG+qN0bS9aOTsmbF3A6VpxRDgmW
 Ojy0GjccE74iFTfqu81HfAopDop+BBWlcEIyQ+ynChIpvmgctKz2CVHBTaXTtxo2j21K
 /V0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=uNtpikjN5hkd0GhY+r23eU7dwsydeFA2mxTgwagKD18=;
 b=k4LArY3BcEex4n8MFvqaInjzeEr6IelFi/BrumZ8iPdYBRRADnF/PYnINN/3dbZcNK
 Yq7D3lgZFPmJg1zOz/43paCe1XRB0EBzDJ+/trssLhfJUMItggwvXQP1W12jn+5Jxc4K
 spkiHOd6nm96SW8RwdXM35OQ5NhJNdr5/x83Zsh7qa79nRyxetz0pbSm2SlHSDv8ALGu
 molE32Ch4PpeaAeLFWb2attW6N/7KEfovBPADcPYUYjVuYIplYnzbFDedQESD/1xFf00
 jGu2x1C8pS7Vhd/xfVgWnTyrjFsKJg8j3DK2/5k0gUnzaYV1eGvanzHQy8JE9N7RU7kP
 hlvw==
X-Gm-Message-State: AOAM530g5C19KGOIVy0P2RxvWCLC6O4UQs+aJNUIxV2AmMdXF8StjLyY
 5uNkzktCrGbTA2FSB7VT1PvszxG5RVCTBpt3FqY=
X-Google-Smtp-Source: ABdhPJxtFwQig3coQy7/cipS78Uk/t5kKv7ZB2nG9mtekBCcICaT81d7Kb4E/tpbxQIRtNSydRie0uhpc2meRt14lNo=
X-Received: by 2002:a1c:3dc3:: with SMTP id k186mr4942467wma.122.1597335212822; 
 Thu, 13 Aug 2020 09:13:32 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1596468610.git.lucien.xin@gmail.com>
 <7ba2ca17347249b980731e7a76ba3e24a9e37720.1596468610.git.lucien.xin@gmail.com>
 <CAPA1RqCz=h-RBu-md1rJ5WLWsr9LLqO8bK9D=q6_vzYMz7564A@mail.gmail.com>
 <CADvbK_dSnrBkw_hJV8LVCEs9D-WB+h2QC3JghLCxVwV5PW9YYA@mail.gmail.com>
 <1f510387-b612-6cb4-8ee6-ff52f6ff6796@gmail.com>
 <CAPA1RqAFkQG-LBTcj80nt4CbWnE7ni+wgCBJU3-up7ROoR9-3w@mail.gmail.com>
 <CADvbK_eEQJUEZuJh4TwxFedR3qawt0HTyQ28rVeZVzecLk5_Ow@mail.gmail.com>
 <CAPA1RqCaAB5R9Foz8rZHmAWtTQeKy8j-wVrOQ4XA6fGNxA307w@mail.gmail.com>
In-Reply-To: <CAPA1RqCaAB5R9Foz8rZHmAWtTQeKy8j-wVrOQ4XA6fGNxA307w@mail.gmail.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Fri, 14 Aug 2020 00:25:48 +0800
Message-ID: <CADvbK_do4gfPHvKt7gah5McipW4pFcLC2RKiaZ07Un9HLVJX=g@mail.gmail.com>
To: Hideaki Yoshifuji <hideaki.yoshifuji@miraclelinux.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: miraclelinux.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1k6FrH-005Tk7-63
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

T24gVHVlLCBBdWcgMTEsIDIwMjAgYXQgMTA6MjYgQU0gSGlkZWFraSBZb3NoaWZ1amkKPGhpZGVh
a2kueW9zaGlmdWppQG1pcmFjbGVsaW51eC5jb20+IHdyb3RlOgo+Cj4gSGksCj4KPiAyMDIw5bm0
OOaciDnml6Uo5pelKSAxOTo1MiBYaW4gTG9uZyA8bHVjaWVuLnhpbkBnbWFpbC5jb20+Ogo+ID4K
PiA+IE9uIEZyaSwgQXVnIDcsIDIwMjAgYXQgNToyNiBQTSBIaWRlYWtpIFlvc2hpZnVqaQo+ID4g
PGhpZGVha2kueW9zaGlmdWppQG1pcmFjbGVsaW51eC5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiBI
aSwKPiA+ID4KPiA+ID4gMjAyMOW5tDjmnIg25pelKOacqCkgMjM6MDMgRGF2aWQgQWhlcm4gPGRz
YWhlcm5AZ21haWwuY29tPjoKPiA+ID4gPgo+ID4gPiA+IE9uIDgvNi8yMCAyOjU1IEFNLCBYaW4g
TG9uZyB3cm90ZToKPiA+ID4gPiA+IE9uIFRodSwgQXVnIDYsIDIwMjAgYXQgMTA6NTAgQU0gSGlk
ZWFraSBZb3NoaWZ1amkKPiA+ID4gPiA+IDxoaWRlYWtpLnlvc2hpZnVqaUBtaXJhY2xlbGludXgu
Y29tPiB3cm90ZToKPiA+ID4gPiA+Pgo+ID4gPiA+ID4+IEhpLAo+ID4gPiA+ID4+Cj4gPiA+ID4g
Pj4gMjAyMOW5tDjmnIg05pelKOeBqykgMDozNSBYaW4gTG9uZyA8bHVjaWVuLnhpbkBnbWFpbC5j
b20+Ogo+ID4gPiA+ID4+Pgo+ID4gPiA+ID4+PiBUaGlzIGlzIHRvIGFkZCBhbiBpcF9kZXZfZmlu
ZCBsaWtlIGZ1bmN0aW9uIGZvciBpcHY2LCB1c2VkIHRvIGZpbmQKPiA+ID4gPiA+Pj4gdGhlIGRl
diBieSBzYWRkci4KPiA+ID4gPiA+Pj4KPiA+ID4gPiA+Pj4gSXQgd2lsbCBiZSB1c2VkIGJ5IFRJ
UEMgcHJvdG9jb2wuIFNvIGFsc28gZXhwb3J0IGl0Lgo+ID4gPiA+ID4+Pgo+ID4gPiA+ID4+PiBT
aWduZWQtb2ZmLWJ5OiBYaW4gTG9uZyA8bHVjaWVuLnhpbkBnbWFpbC5jb20+Cj4gPiA+ID4gPj4+
IC0tLQo+ID4gPiA+ID4+PiAgaW5jbHVkZS9uZXQvYWRkcmNvbmYuaCB8ICAyICsrCj4gPiA+ID4g
Pj4+ICBuZXQvaXB2Ni9hZGRyY29uZi5jICAgIHwgMzkgKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrCj4gPiA+ID4gPj4+ICAyIGZpbGVzIGNoYW5nZWQsIDQxIGluc2VydGlv
bnMoKykKPiA+ID4gPiA+Pj4KPiA+ID4gPiA+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbmV0L2Fk
ZHJjb25mLmggYi9pbmNsdWRlL25ldC9hZGRyY29uZi5oCj4gPiA+ID4gPj4+IGluZGV4IDg0MThi
N2QuLmJhM2Y2YzE1IDEwMDY0NAo+ID4gPiA+ID4+PiAtLS0gYS9pbmNsdWRlL25ldC9hZGRyY29u
Zi5oCj4gPiA+ID4gPj4+ICsrKyBiL2luY2x1ZGUvbmV0L2FkZHJjb25mLmgKPiA+ID4gPiA+Pj4g
QEAgLTk3LDYgKzk3LDggQEAgYm9vbCBpcHY2X2Noa19jdXN0b21fcHJlZml4KGNvbnN0IHN0cnVj
dCBpbjZfYWRkciAqYWRkciwKPiA+ID4gPiA+Pj4KPiA+ID4gPiA+Pj4gIGludCBpcHY2X2Noa19w
cmVmaXgoY29uc3Qgc3RydWN0IGluNl9hZGRyICphZGRyLCBzdHJ1Y3QgbmV0X2RldmljZSAqZGV2
KTsKPiA+ID4gPiA+Pj4KPiA+ID4gPiA+Pj4gK3N0cnVjdCBuZXRfZGV2aWNlICppcHY2X2Rldl9m
aW5kKHN0cnVjdCBuZXQgKm5ldCwgY29uc3Qgc3RydWN0IGluNl9hZGRyICphZGRyKTsKPiA+ID4g
PiA+Pj4gKwo+ID4gPiA+ID4+Cj4gPiA+ID4gPj4gSG93IGRvIHdlIGhhbmRsZSBsaW5rLWxvY2Fs
IGFkZHJlc3Nlcz8KPiA+ID4gPiA+IFRoaXMgaXMgd2hhdCAiaWYgKCFyZXN1bHQpIiBicmFuY2gg
bWVhbnQgdG8gZG86Cj4gPiA+ID4gPgo+ID4gPiA+ID4gKyAgICAgICBpZiAoIXJlc3VsdCkgewo+
ID4gPiA+ID4gKyAgICAgICAgICAgICAgIHN0cnVjdCBydDZfaW5mbyAqcnQ7Cj4gPiA+ID4gPiAr
Cj4gPiA+ID4gPiArICAgICAgICAgICAgICAgcnQgPSBydDZfbG9va3VwKG5ldCwgYWRkciwgTlVM
TCwgMCwgTlVMTCwgMCk7Cj4gPiA+ID4gPiArICAgICAgICAgICAgICAgaWYgKHJ0KSB7Cj4gPiA+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBkZXYgPSBydC0+ZHN0LmRldjsKPiA+ID4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgIGlwNl9ydF9wdXQocnQpOwo+ID4gPiA+ID4gKyAgICAg
ICAgICAgICAgIH0KPiA+ID4gPiA+ICsgICAgICAgfSBlbHNlIHsKPiA+ID4gPiA+ICsgICAgICAg
ICAgICAgICBkZXYgPSByZXN1bHQtPmlkZXYtPmRldjsKPiA+ID4gPiA+ICsgICAgICAgfQo+ID4g
PiA+ID4KPiA+ID4gPgo+ID4gPiA+IHRoZSBzdGF0ZWQgcHVycG9zZSBvZiB0aGlzIGZ1bmN0aW9u
IGlzIHRvIGZpbmQgdGhlIG5ldGRldmljZSB0byB3aGljaCBhbgo+ID4gPiA+IGFkZHJlc3MgaXMg
YXR0YWNoZWQuIEEgcm91dGUgbG9va3VwIHNob3VsZCBub3QgYmUgbmVlZGVkLiBXYWxraW5nIHRo
ZQo+ID4gPiA+IGFkZHJlc3MgaGFzaCBsaXN0IGZpbmRzIHRoZSBhZGRyZXNzIGFuZCBoZW5jZSB0
aGUgbmV0ZGV2IG9yIGl0IGRvZXMgbm90Lgo+ID4gPiA+Cj4gPiA+ID4KPiA+ID4KPiA+ID4gVXNl
ciBzdXBwbGllZCBzY29wZSBpZCB3aGljaCBzaG91bGQgYmUgc2V0IGZvciBsaW5rLWxvY2FsIGFk
ZHJlc3Nlcwo+ID4gPiBpbiBUSVBDX05MQV9VRFBfTE9DQUwgYXR0cmlidXRlIG11c3QgYmUgaG9u
b3JlZCB3aGVuIHdlCj4gPiA+IGNoZWNrIHRoZSBhZGRyZXNzLgo+ID4gSGksIEhpZGVha2kgc2Fu
LAo+ID4KPiA+IFNvcnJ5IGZvciBub3QgdW5kZXJzdGFuZGluZyB5b3VyIGNvbW1lbnQgZWFybGll
ci4KPiA+Cj4gPiBUaGUgYmFkIHRoaW5nIGlzIHRpcGMgaW4gaXByb3V0ZTIgZG9lc24ndCBzZWVt
IGFibGUgdG8gc2V0IHNjb3BlX2lkLgo+Cj4gSSBsb29rZWQgaW50byB0aGUgaXByb3V0ZTIgY29k
ZSBxdWlja2x5IGFuZCBJIHRoaW5rIGl0IHNob3VsZDsgaXQgdXNlcwo+IGdldGFkZHJpbmZvKDMp
IGFuZCBpdCB3aWxsIGZpbGwgaWYgeW91IHNheSAiZmU4MDo6MSVldGgwIiBvciBzb21ldGhpbmcK
PiBsaWtlIHRoYXQuLi4uIE9SLCBmaXggdGhlIGJ1Zy4KcmlnaHQsIHRoYW5rcy4KCj4KPiA+IEkg
c2F3IG1hbnkgcGxhY2VzIGluIGtlcm5lbCBkb2luZyB0aGlzIGNoZWNrOgo+ID4KPiA+ICAgICAg
ICAgICAgICAgICAgICAgICAgICBpZiAoX19pcHY2X2FkZHJfbmVlZHNfc2NvcGVfaWQoYXR5cGUp
ICYmCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICFpcDYtPnNpbjZfc2NvcGVfaWQp
IHsgcmV0dXJuIC1FSU5WQUw7IH0KPiA+Cj4gPiBDYW4gSSBhc2sgd2h5IHNjb3BlIGlkIGlzIG5l
ZWRlZCBmb3IgbGluay1sb2NhbCBhZGRyZXNzZXM/Cj4gPiBhbmQgaXMgdGhhdCBmb3IgbGluay1s
b2NhbCBhZGRyZXNzZXMgb25seT8KPgo+IEJlY2F1c2Ugd2UgZGlzdGluZ3Vpc2ggbGluay1sb2Nh
bCBzY29wZSBhZGRyZXNzZXMgb24gZGlmZmVyZW50IGludGVyZmFjZXMuCj4gT24gdGhlIG90aGVy
IGhhbmQsIHdlIGRvIG5vdCBkaXN0aW5ndWlzaCBnbG9iYWwgc2NvcGUgYWRkcmVzc2VzIG9uCj4g
ZGlmZmVyZW50IGludGVyZmFjZXMuCm9rYXkuCgo+Cj4gPgo+ID4gPgo+ID4gPiBpcHY2X2Noa19h
ZGRyKCkgY2FuIGNoZWNrIGlmIHRoZSBhZGRyZXNzIGFuZCBzdXBwbGllZCBpZmluZGV4IGlzIGEg
dmFsaWQKPiA+ID4gbG9jYWwgYWRkcmVzcy4gIE9yIGludHJvZHVjZSBhbiBleHRyYSBpZmluZGV4
IGFyZ3VtZW50IHRvIGlwdjZfZGV2X2ZpbmQoKS4KPiA+IFllYWgsIGJ1dCBpZiBzY29wZSBpZCBt
ZWFucyBpZmluZGV4IGZvciAgbGluay1sb2NhbCBhZGRyZXNzZXMsIGlwdjZfZGV2X2ZpbmQoKQo+
ID4gd291bGQgYmUgbW9yZSBsaWtlIGEgZnVuY3Rpb24gdG8gdmFsaWRhdGUgdGhlIGFkZHJlc3Mg
d2l0aCByaWdodCBzY29wZSBpZC4KPiA+Cj4KPiBJIHRoaW5rIHdlIHNob3VsZCBmaW5kIGEgbmV0
X2RldmljZSB3aXRoIGEgc3BlY2lmaWMgInZhbGlkIiAobm9uLXRlbnRhdGl2ZSkKPiBhZGRyZXNz
IGhlcmUsIGFuZCB5b3VyIGluaXRpYWwgaW1wbGVtZW50YXRpb24gaXMgbm90IGVub3VnaCBiZWNh
dXNlIGl0IGRvZXMKPiBub3QgcmVqZWN0IHRlbnRhdGl2ZSBhZGRyZXNzZXMuICBJJ2QgcmVjb21t
ZW5kIHVzaW5nIGdlbmVyaWMgaXB2Nl9jaGtfYWRkcigpCj4gaW5zaWRlLgppcHY2X2Noa19hZGRy
KCkgaXMgY2FsbGluZyBpcHY2X2Noa19hZGRyX2FuZF9mbGFncygpLCB3aGljaCB0cmF2ZXJzZXMK
dGhlIGFkZHIgaGFzaCBsaXN0IGFnYWluLiBTbyBJJ20gdGhpbmtpbmcgdG8gcmV1c2UgdGhlIGNv
ZGUgb2YKaXB2Nl9jaGtfYWRkcl9hbmRfZmxhZ3MoKSwgYW5kIGRvOgoKK3N0YXRpYyBzdHJ1Y3Qg
bmV0X2RldmljZSAqCitfX2lwdjZfY2hrX2FkZHJfYW5kX2ZsYWdzKHN0cnVjdCBuZXQgKm5ldCwg
Y29uc3Qgc3RydWN0IGluNl9hZGRyICphZGRyLAorICAgICAgICAgICAgICAgICAgICAgICAgIGNv
bnN0IHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsIGJvb2wgc2tpcF9kZXZfY2hlY2ssCisgICAgICAg
ICAgICAgICAgICAgICAgICAgaW50IHN0cmljdCwgdTMyIGJhbm5lZF9mbGFncykKIHsKICAgICAg
ICB1bnNpZ25lZCBpbnQgaGFzaCA9IGluZXQ2X2FkZHJfaGFzaChuZXQsIGFkZHIpOwogICAgICAg
IGNvbnN0IHN0cnVjdCBuZXRfZGV2aWNlICpsM21kZXY7CkBAIC0xOTI2LDEyICsxOTE4LDI5IEBA
IGludCBpcHY2X2Noa19hZGRyX2FuZF9mbGFncyhzdHJ1Y3QgbmV0ICpuZXQsCmNvbnN0IHN0cnVj
dCBpbjZfYWRkciAqYWRkciwKICAgICAgICAgICAgICAgICAgICAoIWRldiB8fCBpZnAtPmlkZXYt
PmRldiA9PSBkZXYgfHwKICAgICAgICAgICAgICAgICAgICAgIShpZnAtPnNjb3BlJihJRkFfTElO
S3xJRkFfSE9TVCkgfHwgc3RyaWN0KSkpIHsKICAgICAgICAgICAgICAgICAgICAgICAgcmN1X3Jl
YWRfdW5sb2NrKCk7Ci0gICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAxOworICAgICAgICAg
ICAgICAgICAgICAgICByZXR1cm4gaWZwLT5pZGV2LT5kZXY7CiAgICAgICAgICAgICAgICB9CiAg
ICAgICAgfQoKICAgICAgICByY3VfcmVhZF91bmxvY2soKTsKLSAgICAgICByZXR1cm4gMDsKKyAg
ICAgICByZXR1cm4gTlVMTDsKK30KCmFuZCBjaGFuZ2UgdGhlc2UgZnVuY3Rpb25zIHRvIDoKCmlu
dCBpcHY2X2Noa19hZGRyX2FuZF9mbGFncyhzdHJ1Y3QgbmV0ICpuZXQsIGNvbnN0IHN0cnVjdCBp
bjZfYWRkciAqYWRkciwKICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IHN0cnVjdCBu
ZXRfZGV2aWNlICpkZXYsIGJvb2wgc2tpcF9kZXZfY2hlY2ssCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBpbnQgc3RyaWN0LCB1MzIgYmFubmVkX2ZsYWdzKQp7CiAgICAgICAgcmV0dXJuIF9f
aXB2Nl9jaGtfYWRkcl9hbmRfZmxhZ3MobmV0LCBhZGRyLCBkZXYsIHNraXBfZGV2X2NoZWNrLAog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cmljdCwgYmFubmVkX2Zs
YWdzKSA/IDEgOiAwOwp9CkVYUE9SVF9TWU1CT0woaXB2Nl9jaGtfYWRkcl9hbmRfZmxhZ3MpOwoK
c3RydWN0IG5ldF9kZXZpY2UgKmlwdjZfZGV2X2ZpbmQoc3RydWN0IG5ldCAqbmV0LCBjb25zdCBz
dHJ1Y3QgaW42X2FkZHIgKmFkZHIsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0
cnVjdCBuZXRfZGV2aWNlICpkZXYpCnsKICAgICAgICByZXR1cm4gX19pcHY2X2Noa19hZGRyX2Fu
ZF9mbGFncyhuZXQsIGFkZHIsIE5VTEwsIDAsIDEsCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgSUZBX0ZfVEVOVEFUSVZFKTsKfQpFWFBPUlRfU1lNQk9MKGlwdjZfZGV2
X2ZpbmQpOwoKd2hhdCBkbyB5b3UgdGhpbms/CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBjLWRp
c2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
