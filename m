Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED7A6D2989
	for <lists+tipc-discussion@lfdr.de>; Fri, 31 Mar 2023 22:37:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1piLUT-0002Zx-PT;
	Fri, 31 Mar 2023 20:36:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jmaloy@redhat.com>) id 1piLUP-0002Zq-Jy
 for tipc-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 20:36:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K8aqIDWSRr3hEGPAOFYX8md40wt1i7Nyp7WXE7BEOI0=; b=JHq8szIu4Byqs3lwcqTUnrc6iv
 dmo/X18gtZgsdS4haI70vaj+WdTEgCOR8XXnkkIFqwyTKZejCt4tmFcJ7C2CNMAheSd0S8lwybqGQ
 qYOUbyDwVjDtW46sWGw4yBt+QoXIrym0Lo0rmnXID3cOSWALJPfVCD1jprkbLDN5vAl8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K8aqIDWSRr3hEGPAOFYX8md40wt1i7Nyp7WXE7BEOI0=; b=A8I+Aqdp1srInroJLQERpJpJiF
 vya/GZ5vhL+LMM0zXnP9uMS+X1xEuGBHqmvBTsAZXM66NAAt5kCrqFL9veLzKfZ4FOi+8HFzPcLyK
 sn3gSaLGqooA5VoP9kWBfxCuoRoPP6w3kmBo63VYM42WM6gynfVTNdhC+L1XaTFyunCQ=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1piLUF-00BErE-EN for tipc-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 20:36:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680294993;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=K8aqIDWSRr3hEGPAOFYX8md40wt1i7Nyp7WXE7BEOI0=;
 b=G/rhpslxEdiNL/XAmIUfySlaB0IVWWeo+0Ro7wVzEXjICjQexMuper0Ntjvj7lEJt9Kfqt
 ILF4pwlh2CLrJ6mxidTT3u+c7FDNUTdx+FOjMv8gR0O+MdcFCHH8NBv0dRk9JROifqiG7S
 yyeNgBEdD5iblpw1DfVXtIQgpS9PyH4=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-144-MNIzGjM1P56D_-F3KXdkEA-1; Fri, 31 Mar 2023 16:36:31 -0400
X-MC-Unique: MNIzGjM1P56D_-F3KXdkEA-1
Received: by mail-qk1-f197.google.com with SMTP id
 b142-20020ae9eb94000000b007486a8b9ae9so8400518qkg.11
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 13:36:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680294991;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=K8aqIDWSRr3hEGPAOFYX8md40wt1i7Nyp7WXE7BEOI0=;
 b=5YG+JZ33w5OG1DnQgMn8/6nNP1Q7MVq53rfV5/060sTRbDkt3jPfFpkJjFeXNPZYif
 pbaAHfmtDLEwe1oWHeQnNfL7Z13QR6seMUZyKf+Uhkd7GZYTeTFu6GtRBfzRG+ExEpUT
 AKOYaJqUixl3+bfdWG20woEA4rd6y8JNtY50XFAPYemdbSX0Vb+CgPPM+HwGwP5IJDiB
 3wnULHo1YWLSUKgkbry7N16cbfqA7EpFGkgItVC8BoVc3lNg5S7u9IKL2ynW1Oermkkg
 YlZTXo3QoxaG1pzW+ZiwBDR8OBHSHGhGGT3BVupzWBF/fcD/soJO7zXqRzDv8ooQZCmE
 bpGg==
X-Gm-Message-State: AO0yUKXXJ09NlwWHE52paWKtc3HfrPGjlY+6+F9IKguVH6LVXEC7COm/
 sTaELUUuUbiEwUgHmLTKNcIeznEuS6w9rWAU8IVE0lAuPkBKxpRYKzAFygbkQdrfCEJTPtNpOX6
 EDDvd0AT0jsZqiBpyhVmPXh5IoPUpxvDothuaRTmgESps/99Gi1n3GxFJJ2BdQqn8ThUn5gLMB0
 GiGNvTv7iHngsCDwQLvg==
X-Received: by 2002:ac8:5d94:0:b0:3b6:9c63:5ca1 with SMTP id
 d20-20020ac85d94000000b003b69c635ca1mr51550852qtx.43.1680294991048; 
 Fri, 31 Mar 2023 13:36:31 -0700 (PDT)
X-Google-Smtp-Source: AK7set+4NaDAz6I7xQsUowEee7v81WmF0VfgcXW4M9rAQnrgY4oozMA+jigepxyTMfXnotBxJVECFg==
X-Received: by 2002:ac8:5d94:0:b0:3b6:9c63:5ca1 with SMTP id
 d20-20020ac85d94000000b003b69c635ca1mr51550812qtx.43.1680294990527; 
 Fri, 31 Mar 2023 13:36:30 -0700 (PDT)
Received: from [10.0.0.97] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 t12-20020a37460c000000b0074a0a6ce71csm921097qka.61.2023.03.31.13.36.29
 for <tipc-discussion@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Mar 2023 13:36:30 -0700 (PDT)
Message-ID: <274e923f-496b-ba3d-35d0-cf19848a4a7e@redhat.com>
Date: Fri, 31 Mar 2023 16:36:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: tipc-discussion@lists.sourceforge.net
References: <1377167456.519331.1678429199618.ref@mail.yahoo.com>
 <1377167456.519331.1678429199618@mail.yahoo.com>
 <972059401.678694.1678726696686@mail.yahoo.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <972059401.678694.1678726696686@mail.yahoo.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Nagendra, Sorry for not noticing this earlier. I will look
 into this next week. ///jon On 2023-03-13 12:58,
 Nagendra Kumar via tipc-discussion
 wrote: > Sending it again..... > On Friday, 10 March, 2023 at 11:49:59 am
 IST, Nagendra Kumar <nagen_kr@yahoo.co.in> wrote: > > Hi,We are trying [...]
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1piLUF-00BErE-EN
Subject: Re: [tipc-discussion] TIPC issue
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

SGkgTmFnZW5kcmEsClNvcnJ5IGZvciBub3Qgbm90aWNpbmcgdGhpcyBlYXJsaWVyLiBJIHdpbGwg
bG9vayBpbnRvIHRoaXMgbmV4dCB3ZWVrLgoKLy8vam9uCgpPbiAyMDIzLTAzLTEzIDEyOjU4LCBO
YWdlbmRyYSBLdW1hciB2aWEgdGlwYy1kaXNjdXNzaW9uIHdyb3RlOgo+ICAgU2VuZGluZyBpdCBh
Z2Fpbi4uLi4uCj4gICAgICBPbiBGcmlkYXksIDEwIE1hcmNoLCAyMDIzIGF0IDExOjQ5OjU5IGFt
IElTVCwgTmFnZW5kcmEgS3VtYXIgPG5hZ2VuX2tyQHlhaG9vLmNvLmluPiB3cm90ZToKPiAgIAo+
ICAgSGksV2UgYXJlIHRyeWluZyB0byB1c2UgVElQQyBvbiBSSEVMOC40IHRvIG1hbnVhbGx5IGNv
bW11bmljYXRlIE9wZW5TQUYgbm9kZXMsIHVzaW5nIFRJUEMgaW5zdGVhZCBvZiBUQ1AuCj4gT3Bl
blNBRiBpcyBkZXNpZ25lZCB0byB3b3JrIHdpdGggVElQQyBidXQgb25seSBhcyBMMiBhbmQsIGlu
IHRoaXMgY2FzZSwgd2UgbmVlZCBJUCByb3V0aW5nLiBUaGF0J3Mgd2h5IHdlIGFyZSBjb25maWd1
cmluZyBpdCBtYW51YWxseS4KPiBJIGFtIHVzaW5nIHRoZSBmb2xsb3dpbmcgc2NyaXB0IHRvIHN0
YXJ0IGFuZCBjb25maWd1cmUgVElQQzojIS9iaW4vYmFzaAo+IFNMT1RfSUQ9JChjYXQgIi9ldGMv
b3BlbnNhZi9zbG90X2lkIilERVY9ZW5vMQo+IG1vZHByb2JlIHRpcGN0aXBjIG5vZGUgc2V0IG5l
dGlkIDExMTF0aXBjIG5vZGUgc2V0IGFkZHJlc3MgMS4xLiRTTE9UX0lEdGlwYyBub2RlIHNldCBp
ZGVudGl0eSAkKGhvc3RuYW1lKXRpcGMgYmVhcmVyIGVuYWJsZSBtZWRpYSB1ZHAgZGV2aWNlICRE
RVYgbmFtZSAkKGhvc3RuYW1lKXRpcGMgbWVkaWEgc2V0IG10dSA5MDAwIG1lZGlhIHVkcAo+IChD
b25maWd1cmluZyBUSVBDIHdpdGggVURQIHdlIGdldCBUSVBDIHRyYWZmaWMgYmV0d2VlbiBub2Rl
cyBvZiBkaWZmZXJlbnQgY2FiaW5ldHMpCj4gICBUaGV5IGhhdmUgYWxsIHJ1biB0aGUgc2FtZSBz
Y3JpcHQuIFNvbWV0aW1lcyBpdCBoYXBwZW5zIHRvIHNvbWUgYW5kIHNvbWV0aW1lcyBpdCBoYXBw
ZW5zIHRvIG90aGVycyBkb2luZyBleGFjdGx5IHRoZSBzYW1lLiBJbiB0aGlzIGNhc2UgcHJvY3Mg
YW5kIHNzYWYocGljcyBhdHRhY2hlZCkgYXJlIGluIGRpZmZlcmVudCBWTEFOcy4gV2hlbiB0aGV5
IGFyZSBpbiB0aGUgc2FtZSBWTEFOLCB0aGV5IGFsd2F5cyB3b3JrIGNvcnJlY3RseS4KPgo+Cj4K
PiBJIGRvbid0IGtub3cgaWYgaXQncyBhIG5ldHdvcmsgb3Igc29mdHdhcmUgcHJvYmxlbSBhcyBj
b21tdW5pY2F0aW9ucyBhcmUgd29ya2luZyBmaW5lLgo+IFJIRUwgdmVyc2lvbjogUmVkIEhhdCBF
bnRlcnByaXNlIExpbnV4IHJlbGVhc2UgOC40IChPb3RwYSkKPiBLZXJuZWwgdmVyc2lvbjogNC4x
OC4wLTMwNS5lbDgueDg2XzY0Cj4gVElQQyB2ZXJzaW9uOiBCdWlsdC1pbiBrZXJuZWwgbW9kdWxl
Cgo+Cj4KPiAgICAgCj4gIMKgVGhhbmsgeW91ICEtTmFnZW5kcmEKPiAgICAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IHRpcGMtZGlzY3Vzc2lvbiBt
YWlsaW5nIGxpc3QKPiB0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cj4gaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdGlwYy1kaXNjdXNzaW9u
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCnRpcGMt
ZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRp
c2N1c3Npb24K
