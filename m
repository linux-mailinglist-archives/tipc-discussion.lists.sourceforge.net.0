Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC424143DF
	for <lists+tipc-discussion@lfdr.de>; Wed, 22 Sep 2021 10:35:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mSxir-0005Th-FP; Wed, 22 Sep 2021 08:35:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lucien.xin@gmail.com>) id 1mSxiq-0005Ta-6H
 for tipc-discussion@lists.sourceforge.net; Wed, 22 Sep 2021 08:35:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/Gx4L/1NAk4Iv2RdDmlgosM64ofUaXgHFBqseDfsphU=; b=gmKfElsJ+3JIFyOi8WHf5yA1Da
 mNnoBzPbtj31JPIzqO1AlFihW1r6WI5NEs5CC55BTexbfsZqoTJNj3enB1KDAbbxL754xrYJOVRo9
 kf+Yc/2HGpuyqymWtdyErJGFBbvwPidEUkREIbPbBHQ+dNk3fp0jMPM8i7RjuBhByb8Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/Gx4L/1NAk4Iv2RdDmlgosM64ofUaXgHFBqseDfsphU=; b=cPQJYWL5Uyah4L5ae2VlzeQmdI
 7PW1trbhaStLmcEyexillqYCoKoDdKEscFRi9b0qPkbKkQVrvOvsldzzu3itwnxzQETZ0dD6caa88
 mrYo6h5RPfCUx5zKMOnJwBfRNp0CVmaXgNK/G8xwraeEmFGaW8zhiJ26UTY3G0SKHqto=;
Received: from mail-wr1-f51.google.com ([209.85.221.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mSxim-0006BP-Ut
 for tipc-discussion@lists.sourceforge.net; Wed, 22 Sep 2021 08:35:20 +0000
Received: by mail-wr1-f51.google.com with SMTP id u15so4400324wru.6
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 22 Sep 2021 01:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/Gx4L/1NAk4Iv2RdDmlgosM64ofUaXgHFBqseDfsphU=;
 b=CHk9VVBVnEpgc0/LS40Vz5fPuBsV6DceKDuqqtaPcGtFO/q6kaqaxUs2B1hGN3sj1C
 aug1FslybESiocpYyw6F6crit/WXFW6vNMXMjvbdw2CYf7O/bQHUFAmMeUhCAYGNGeXf
 LzQ7zgN3PB0l1rD9ZKjIx5786bAMYVYytluihKfgFVLKCQ26TNKd1PGEo21Oi9Dj2y6f
 r0YsaSQijmlW4NSvP9WygA753i/e38N/2Hkdvodb+DAFmTkoS3RmrH5Emtc/IA4mDRfg
 4iIivHIMYZ7arxTRfvSO3CPFZO+fcY6t1jHiDmjgdIJi3B6dibM8Zm3siCDx0JIDxOzI
 17cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/Gx4L/1NAk4Iv2RdDmlgosM64ofUaXgHFBqseDfsphU=;
 b=M800XF2gQb+MXsNp1CHnrYSIioIOscw3oO4xkaAeLG4Om9jwhdqWqJdxci2guGzU4X
 5ZJuXnRXwsUeY32y4Wmpxwjm90Nr1cQWVAjnEDlrMD+UWVc9Ua7PIb/gIUOYRug+Hqrh
 IRvTuaExG4Tni6yWn0ZXJErOllEbDFR5qjjkfKYr8QyBAfl5Q8BR3z0ERVEJdHkZI3D4
 xrpshfkXNFjHkrw9prnqLJ/BQsGyP/cDf9p+PDTnoResgGlrjJanwevwSoP6+nFZNAGK
 sl5InN0FzkFQK+aQvm5jgdVGMXbB3gXJs8zzbYCL/Fs3PZL2XALEvm12Yi6T1pPv7jNf
 /mYA==
X-Gm-Message-State: AOAM531CukTNv15tgoQS2bUxGAXHJExkBe03ybXlEsMcKcrz+W5w/eAI
 yCaCjzeueANB/U6C171ZxSjllMAIvMmcuvHX54iJfGnlogM=
X-Google-Smtp-Source: ABdhPJy0ubBQBNx0gwoGMBqD5HE9YUlYeYMvHa8UGFmT/RwOqGeOQ258vX/o7RhPsnyqmqXHLM72ugCjpWwJvzS0zyo=
X-Received: by 2002:a1c:f70a:: with SMTP id v10mr9205107wmh.3.1632299710549;
 Wed, 22 Sep 2021 01:35:10 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1625595705.git.lucien.xin@gmail.com>
 <70956cd091fc886c080765c8ec2cab2a76bb9fbf.1625595705.git.lucien.xin@gmail.com>
 <63c01cc1-a861-0de1-c70d-9be228cdddc8@redhat.com>
In-Reply-To: <63c01cc1-a861-0de1-c70d-9be228cdddc8@redhat.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Wed, 22 Sep 2021 16:34:59 +0800
Message-ID: <CADvbK_fw2cJz03ZEXxyG6nD+QJxeYksPOsF9iYY0btiXFBB_EQ@mail.gmail.com>
To: Jon Maloy <jmaloy@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Sep 10, 2021 at 8:08 AM Jon Maloy wrote: > > > > On
 06/07/2021 14:22,
 Xin Long wrote: > > Since there's no enough bit in netdev_features_t
 for > > NETIF_F_GSO_TIPC_BIT, and tipc is using the [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.51 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1mSxim-0006BP-Ut
Subject: Re: [tipc-discussion] [PATCH net-next 8/8] tipc: add hardware gso
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
Cc: tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

T24gRnJpLCBTZXAgMTAsIDIwMjEgYXQgODowOCBBTSBKb24gTWFsb3kgPGptYWxveUByZWRoYXQu
Y29tPiB3cm90ZToKPgo+Cj4KPiBPbiAwNi8wNy8yMDIxIDE0OjIyLCBYaW4gTG9uZyB3cm90ZToK
PiA+IFNpbmNlIHRoZXJlJ3Mgbm8gZW5vdWdoIGJpdCBpbiBuZXRkZXZfZmVhdHVyZXNfdCBmb3IK
PiA+IE5FVElGX0ZfR1NPX1RJUENfQklULCBhbmQgdGlwYyBpcyB1c2luZyB0aGUgc2ltbGlhcgo+
ID4gY29kZSBhcyBzY3RwLCB0aGlzIHBhdGNoIHdpbGwgcmV1c2UgU0tCX0dTT19TQ1RQIGFuZAo+
ID4gTkVUSUZfRl9HU09fU0NUUF9CSVQgZm9yIHRpcGMuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTog
WGluIExvbmcgPGx1Y2llbi54aW5AZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgIGluY2x1ZGUvbGlu
dXgvc2tidWZmLmggfCAgMiAtLQo+ID4gICBuZXQvdGlwYy9ub2RlLmMgICAgICAgIHwgMTUgKysr
KysrKysrKysrKystCj4gPiAgIG5ldC90aXBjL29mZmxvYWQuYyAgICAgfCAgNCArKy0tCj4gPiAg
IDMgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiA+Cj4g
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9za2J1ZmYuaCBiL2luY2x1ZGUvbGludXgvc2ti
dWZmLmgKPiA+IGluZGV4IDE0OGJmMGVkNzMzNi4uYjJkYjljZDlhNzNmIDEwMDY0NAo+ID4gLS0t
IGEvaW5jbHVkZS9saW51eC9za2J1ZmYuaAo+ID4gKysrIGIvaW5jbHVkZS9saW51eC9za2J1ZmYu
aAo+ID4gQEAgLTU5OSw4ICs1OTksNiBAQCBlbnVtIHsKPiA+ICAgICAgIFNLQl9HU09fVURQX0w0
ID0gMSA8PCAxNywKPiA+Cj4gPiAgICAgICBTS0JfR1NPX0ZSQUdMSVNUID0gMSA8PCAxOCwKPiA+
IC0KPiA+IC0gICAgIFNLQl9HU09fVElQQyA9IDEgPDwgMTksCj4gPiAgIH07Cj4gPgo+ID4gICAj
aWYgQklUU19QRVJfTE9ORyA+IDMyCj4gPiBkaWZmIC0tZ2l0IGEvbmV0L3RpcGMvbm9kZS5jIGIv
bmV0L3RpcGMvbm9kZS5jCj4gPiBpbmRleCA5OTQ3YjdkZmUxZDIuLjE3ZTU5YzhkYWMzMSAxMDA2
NDQKPiA+IC0tLSBhL25ldC90aXBjL25vZGUuYwo+ID4gKysrIGIvbmV0L3RpcGMvbm9kZS5jCj4g
PiBAQCAtMjA2OCw3ICsyMDY4LDcgQEAgc3RhdGljIGJvb2wgdGlwY19ub2RlX2NoZWNrX3N0YXRl
KHN0cnVjdCB0aXBjX25vZGUgKm4sIHN0cnVjdCBza19idWZmICpza2IsCj4gPiAgICAqIEludm9r
ZWQgd2l0aCBubyBsb2NrcyBoZWxkLiBCZWFyZXIgcG9pbnRlciBtdXN0IHBvaW50IHRvIGEgdmFs
aWQgYmVhcmVyCj4gPiAgICAqIHN0cnVjdHVyZSAoaS5lLiBjYW5ub3QgYmUgTlVMTCksIGJ1dCBi
ZWFyZXIgY2FuIGJlIGluYWN0aXZlLgo+ID4gICAgKi8KPiA+IC12b2lkIHRpcGNfcmN2KHN0cnVj
dCBuZXQgKm5ldCwgc3RydWN0IHNrX2J1ZmYgKnNrYiwgc3RydWN0IHRpcGNfYmVhcmVyICpiKQo+
ID4gK3N0YXRpYyB2b2lkIF9fdGlwY19yY3Yoc3RydWN0IG5ldCAqbmV0LCBzdHJ1Y3Qgc2tfYnVm
ZiAqc2tiLCBzdHJ1Y3QgdGlwY19iZWFyZXIgKmIpCj4gPiAgIHsKPiA+ICAgICAgIHN0cnVjdCBz
a19idWZmX2hlYWQgeG1pdHE7Cj4gPiAgICAgICBzdHJ1Y3QgdGlwY19saW5rX2VudHJ5ICpsZTsK
PiA+IEBAIC0yMTg5LDYgKzIxODksMTkgQEAgdm9pZCB0aXBjX3JjdihzdHJ1Y3QgbmV0ICpuZXQs
IHN0cnVjdCBza19idWZmICpza2IsIHN0cnVjdCB0aXBjX2JlYXJlciAqYikKPiA+ICAgICAgIGtm
cmVlX3NrYihza2IpOwo+ID4gICB9Cj4gPgo+ID4gK3ZvaWQgdGlwY19yY3Yoc3RydWN0IG5ldCAq
bmV0LCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBzdHJ1Y3QgdGlwY19iZWFyZXIgKmIpCj4gPiArewo+
ID4gKyAgICAgc3RydWN0IHNrX2J1ZmYgKnNlZywgKm5leHQ7Cj4gPiArCj4gPiArICAgICBpZiAo
IXNrYl9pc19nc28oc2tiKSB8fCAhc2tiX2lzX2dzb19zY3RwKHNrYikpCj4gPiArICAgICAgICAg
ICAgIHJldHVybiBfX3RpcGNfcmN2KG5ldCwgc2tiLCBiKTsKPiA+ICsKPiA+ICsgICAgIHNrYl9s
aXN0X3dhbGtfc2FmZShza2Jfc2hpbmZvKHNrYiktPmZyYWdfbGlzdCwgc2VnLCBuZXh0KQo+ID4g
KyAgICAgICAgICAgICBfX3RpcGNfcmN2KG5ldCwgc2VnLCBiKTsKPiA+ICsgICAgIHNrYl9zaGlu
Zm8oc2tiKS0+ZnJhZ19saXN0ID0gTlVMTDsKPiA+ICsgICAgIGNvbnN1bWVfc2tiKHNrYik7Cj4g
PiArfQo+ID4gKwo+ID4gICB2b2lkIHRpcGNfbm9kZV9hcHBseV9wcm9wZXJ0eShzdHJ1Y3QgbmV0
ICpuZXQsIHN0cnVjdCB0aXBjX2JlYXJlciAqYiwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBpbnQgcHJvcCkKPiA+ICAgewo+ID4gZGlmZiAtLWdpdCBhL25ldC90aXBjL29mZmxvYWQu
YyBiL25ldC90aXBjL29mZmxvYWQuYwo+ID4gaW5kZXggZDEzNzY3OWY0ZGIwLi4yNmUzNzIxNzg2
MzUgMTAwNjQ0Cj4gPiAtLS0gYS9uZXQvdGlwYy9vZmZsb2FkLmMKPiA+ICsrKyBiL25ldC90aXBj
L29mZmxvYWQuYwo+ID4gQEAgLTUsNyArNSw3IEBACj4gPiAgIHN0YXRpYyBzdHJ1Y3Qgc2tfYnVm
ZiAqdGlwY19nc29fc2VnbWVudChzdHJ1Y3Qgc2tfYnVmZiAqc2tiLAo+ID4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBuZXRkZXZfZmVhdHVyZXNfdCBmZWF0dXJlcykKPiA+
ICAgewo+ID4gLSAgICAgaWYgKCEoc2tiX3NoaW5mbyhza2IpLT5nc29fdHlwZSAmIFNLQl9HU09f
VElQQykpCj4gPiArICAgICBpZiAoIShza2Jfc2hpbmZvKHNrYiktPmdzb190eXBlICYgU0tCX0dT
T19TQ1RQKSkKPiA+ICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7Cj4gPgo+
ID4gICAgICAgcmV0dXJuIHNrYl9zZWdtZW50KHNrYiwgKGZlYXR1cmVzIHwgTkVUSUZfRl9IV19D
U1VNKSAmIH5ORVRJRl9GX1NHKTsKPiA+IEBAIC0zOSw3ICszOSw3IEBAIGJvb2wgdGlwY19tc2df
Z3NvX2FwcGVuZChzdHJ1Y3Qgc2tfYnVmZiAqKnAsIHN0cnVjdCBza19idWZmICpza2IsIHUxNiBz
ZWdzKQo+ID4KPiA+ICAgICAgICAgICAgICAgc2tiX3NoaW5mbyhuc2tiKS0+ZnJhZ19saXN0ID0g
aGVhZDsKPiA+ICAgICAgICAgICAgICAgc2tiX3NoaW5mbyhuc2tiKS0+Z3NvX3NlZ3MgPSAxOwo+
ID4gLSAgICAgICAgICAgICBza2Jfc2hpbmZvKG5za2IpLT5nc29fdHlwZSA9IFNLQl9HU09fVElQ
QzsKPiA+ICsgICAgICAgICAgICAgc2tiX3NoaW5mbyhuc2tiKS0+Z3NvX3R5cGUgPSBTS0JfR1NP
X1NDVFA7Cj4gPiAgICAgICAgICAgICAgIHNrYl9zaGluZm8obnNrYiktPmdzb19zaXplID0gR1NP
X0JZX0ZSQUdTOwo+ID4gICAgICAgICAgICAgICBza2JfcmVzZXRfbmV0d29ya19oZWFkZXIoaGVh
ZCk7Cj4gPgo+ID4KPgo+IEkgZG9uwrR0IGhhdmUgbXVjaCBtb3JlIHRvIGFkZCwgLWl0IGxvb2tz
IGdvb2QgdG8gbWUsIGFuZCB3YXkgc2ltcGxlcgo+IHRoYW4gd2hhdCBJIHdhcyB0cnlpbmcgYSBj
b3VwbGUgb2YgeWVhcnMgYWdvLgo+Cj4gSWYgeW91IGZpeCB0aGUgY2hlY2twYXRjaCBpc3N1ZXMg
YW5kLCBtYXliZSBpZiBwb3NzaWJsZSwgc3BsaXQgaXQgaW50bwo+IHR3byBzZXJpZXMsIHlvdSBo
YXZlIG15IGFjay4KPgo+IFBTLiBEaWQgeW91IHRlc3QgdGhpcyB3aXRoIGNyeXB0bz8KSGkgSm9u
LAoKU29ycnkgZm9yIGxhdGUuCgpHb3QgYW4gdXJnZW50IHByb2JsZW0gZnJvbSBhIGN1c3RvbWVy
IHJlY2VudGx5LCBhbmQgc3BlbnQgcXVpdGUgYSBmZXcKd2Vla3MgZ2V0dGluZyB0aGluZ3MgYWxt
b3N0IGRvbmUuCkkgbmVlZCB0byBkbyBtb3JlIHRlc3RpbmcgZm9yIGl0cyBwZXJmb3JtYW5jZSBp
biBkaWZmZXJlbnQgc2NlbmFyaW9zCmJlZm9yZSBjb250aW51aW5nLgpJIHRoaW5rIEkgZGlkLCBi
dXQgSSB3aWxsIGNvbmZpcm0gaXQgd2lsbCB3b3JrIHdlbGwgb3ZlciBjcnlwdG8uCgpUaGFua3Mg
YSBsb3QgZm9yIGNoZWNraW5nIQoKPgo+IC8vL2pvbgo+CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0
aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNl
Zm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
