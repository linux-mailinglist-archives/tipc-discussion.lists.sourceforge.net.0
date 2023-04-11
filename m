Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7416DE611
	for <lists+tipc-discussion@lfdr.de>; Tue, 11 Apr 2023 22:57:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pmL3e-0005I2-RT;
	Tue, 11 Apr 2023 20:57:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jmaloy@redhat.com>) id 1pmL3d-0005Hw-98
 for tipc-discussion@lists.sourceforge.net;
 Tue, 11 Apr 2023 20:57:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ifEfnNzMU2mm50k4QXq7BRUis4s8fuaIM0xaoASPKrs=; b=kgBhSmO5BWHHYgEou5CnQFiCbQ
 iwrlfiNouQlDXq4+fmp/R+ocVCvWMDU4sh5xiiaEFNZEXndSUgTWKOXtZIeENT0ROcc+cmCWOi3Hp
 qJ6sDgC3mZVJrrb/KBwq0b01+/B9mmJ1kyjFIkP2ZmffQOvUv6TaG/d2S50Kbu/VL0FQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ifEfnNzMU2mm50k4QXq7BRUis4s8fuaIM0xaoASPKrs=; b=KTWzNke50T61He6bKS82tF5ee1
 nSFnIV2/OdQ1W6gE0rWs3bPxSy1HSfdrXY388oT3NrMqhUIpI3GOGD9O7ceulqBtiyIGiV55SH9sg
 2ooKTWuE1iUDuoXZMCnYuYvQgdOfpScgBX2Ll4solsQQHyjr35osc/6XMNKRoPot+VWk=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pmL3Y-0007AP-9P for tipc-discussion@lists.sourceforge.net;
 Tue, 11 Apr 2023 20:57:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1681246648;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ifEfnNzMU2mm50k4QXq7BRUis4s8fuaIM0xaoASPKrs=;
 b=SP51hgnhCjSt/3GnvSROs9AHi69qsMovBjbFTvJSOmcU6EE7928pBXUiLEFgG+yLl1ARE7
 9tgIHp6dmR7VkVpafWT94C9PqdGsHPjoPzwQL3lgkc7pjMeq/pyTGWOmimHPEr9sY3FhdI
 IPir+n6WRtgk93+rMRRPh8gxJAkO5kM=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-487-BGCIidjyP3KC8wLpla0zJg-1; Tue, 11 Apr 2023 16:57:27 -0400
X-MC-Unique: BGCIidjyP3KC8wLpla0zJg-1
Received: by mail-qv1-f70.google.com with SMTP id
 qf10-20020a0562144b8a00b005e7c60f8fe0so6588653qvb.6
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 11 Apr 2023 13:57:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681246646; x=1683838646;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :to:from:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ifEfnNzMU2mm50k4QXq7BRUis4s8fuaIM0xaoASPKrs=;
 b=NsAqG28FNjoM3IRkRZ74IYbg+2JRnLY9QvTYZ1fZx6Ym4Is4N9BCHIwHNxTvCXaua5
 V2u4vdYD65ldrP2K62U5FJu5kHP76L1kL88nGsLxFcqo3gsq7NG83+LuKHuPHWuF8m6l
 YlPb/nDR3oYXlndz20Unc54fWT4+9wIc4EbZ4E8OH5KrWfLKCOkeXNDh2Z+WOHvkO0vm
 hGxIGRPuXXyumVr+SRz7vojiviK1U8tPcfHuBR9azIpDFU+L76cpLDhT1/v7ZPgaXyHw
 qKW7GpvF6T/bLnYlq+rHEYzHhtC78pXLJzzuPmx7Ff2HxQoa3TAcRmdfQVEvyBAqMmCe
 /b1A==
X-Gm-Message-State: AAQBX9e4HGl3+s9KWipj5+OyGqIn608wLHzZqk4TkdHuJR9f/URQuwBT
 A4IV9E3/+pts9xDdRB8P51OyQUNwslfLh4QoKoVCuZOOzZagwoWukVVYZBFPH4GyUG9s3S2bGja
 QmoEB3CtV0lTwC7+HfFOSWHzKFnWlewk0kxQx4jAwqLf6vZUL1mh0aswGV1KkzPmrptudfMsCWH
 3lYAy9OSenuVj+WxPsxA==
X-Received: by 2002:ac8:5a48:0:b0:3e7:e27a:64d3 with SMTP id
 o8-20020ac85a48000000b003e7e27a64d3mr987932qta.23.1681246646724; 
 Tue, 11 Apr 2023 13:57:26 -0700 (PDT)
X-Google-Smtp-Source: AKy350a5mbHgbdXl0MSR/gjVPGC3AVlDohzalFXYpY0TVnwCwEWGZkmAt8p86eeQIc4N+WUNlGC97A==
X-Received: by 2002:ac8:5a48:0:b0:3e7:e27a:64d3 with SMTP id
 o8-20020ac85a48000000b003e7e27a64d3mr987910qta.23.1681246646365; 
 Tue, 11 Apr 2023 13:57:26 -0700 (PDT)
Received: from [10.0.0.97] ([24.225.234.80]) by smtp.gmail.com with ESMTPSA id
 186-20020a3705c3000000b007456c75edbbsm4203190qkf.129.2023.04.11.13.57.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Apr 2023 13:57:25 -0700 (PDT)
Message-ID: <d2b23e9f-8b2c-59d8-7ed3-477d15d89652@redhat.com>
Date: Tue, 11 Apr 2023 16:57:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
From: Jon Maloy <jmaloy@redhat.com>
To: tipc-discussion@lists.sourceforge.net, nagen_kr@yahoo.co.in,
 Xin Long <lxin@redhat.com>, tung quang nguyen
 <tung.q.nguyen@dektech.com.au>, Ying Xue <ying.xue@windriver.com>
References: <1377167456.519331.1678429199618.ref@mail.yahoo.com>
 <1377167456.519331.1678429199618@mail.yahoo.com>
 <972059401.678694.1678726696686@mail.yahoo.com>
 <346208247.784366.1678982592020@mail.yahoo.com>
 <a79f7f43-a9d1-0a80-1647-0e9139c7b9f5@redhat.com>
In-Reply-To: <a79f7f43-a9d1-0a80-1647-0e9139c7b9f5@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2023-04-04 20:30, Jon Maloy wrote: > > > On 2023-03-16
   12:03, Nagendra Kumar via tipc-discussion wrote: >>   Hi Jon/Tuong/Tung/Hoang/Thang,Is
    there any thoughts on the below >> email trails?? >> T [...] 
 
 Content analysis details:   (-2.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [170.10.129.124 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [170.10.129.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pmL3Y-0007AP-9P
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

CgpPbiAyMDIzLTA0LTA0IDIwOjMwLCBKb24gTWFsb3kgd3JvdGU6Cj4KPgo+IE9uIDIwMjMtMDMt
MTYgMTI6MDMsIE5hZ2VuZHJhIEt1bWFyIHZpYSB0aXBjLWRpc2N1c3Npb24gd3JvdGU6Cj4+IMKg
IEhpIEpvbi9UdW9uZy9UdW5nL0hvYW5nL1RoYW5nLElzIHRoZXJlIGFueSB0aG91Z2h0cyBvbiB0
aGUgYmVsb3cgCj4+IGVtYWlsIHRyYWlscz8/Cj4+IFRoYW5rcy1OYWdlbmRyYQo+PiDCoMKgwqDC
oCBPbiBNb25kYXksIDEzIE1hcmNoLCAyMDIzIGF0IDEwOjU5OjQ1IHBtIElTVCwgTmFnZW5kcmEg
S3VtYXIgdmlhIAo+PiB0aXBjLWRpc2N1c3Npb24gPHRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQ+IHdyb3RlOgo+PiDCoCDCoMKgIFNlbmRpbmcgaXQgYWdhaW4uLi4uLgo+PiDC
oMKgIMKgIE9uIEZyaWRheSwgMTAgTWFyY2gsIDIwMjMgYXQgMTE6NDk6NTkgYW0gSVNULCBOYWdl
bmRyYSBLdW1hciAKPj4gPG5hZ2VuX2tyQHlhaG9vLmNvLmluPiB3cm90ZToKPj4gwqAgwqAgSGks
V2UgYXJlIHRyeWluZyB0byB1c2UgVElQQyBvbiBSSEVMOC40IHRvIG1hbnVhbGx5IGNvbW11bmlj
YXRlIAo+PiBPcGVuU0FGIG5vZGVzLCB1c2luZyBUSVBDIGluc3RlYWQgb2YgVENQLgo+PiBPcGVu
U0FGIGlzIGRlc2lnbmVkIHRvIHdvcmsgd2l0aCBUSVBDIGJ1dCBvbmx5IGFzIEwyIGFuZCwgaW4g
dGhpcyAKPj4gY2FzZSwgd2UgbmVlZCBJUCByb3V0aW5nLiBUaGF0J3Mgd2h5IHdlIGFyZSBjb25m
aWd1cmluZyBpdCBtYW51YWxseS4KPj4gSSBhbSB1c2luZyB0aGUgZm9sbG93aW5nIHNjcmlwdCB0
byBzdGFydCBhbmQgY29uZmlndXJlIFRJUEM6IyEvYmluL2Jhc2gKPj4gU0xPVF9JRD0kKGNhdCAi
L2V0Yy9vcGVuc2FmL3Nsb3RfaWQiKURFVj1lbm8xCj4+IG1vZHByb2JlIHRpcGMKPgo+PiB0aXBj
IG5vZGUgc2V0IG5ldGlkIDExMTF0aXBjIG5vZGUgc2V0IGFkZHJlc3MgMS4xLiRTTE9UX0lEdGlw
YyBub2RlIAo+PiBzZXQgaWRlbnRpdHkgJChob3N0bmFtZSl0aXBjIGJlYXJlciBlbmFibGUgbWVk
aWEgdWRwIGRldmljZSAkREVWIG5hbWUgCj4+ICQoaG9zdG5hbWUpdGlwYyBtZWRpYSBzZXQgbXR1
IDkwMDAgbWVkaWEgdWRwCj4+IChDb25maWd1cmluZyBUSVBDIHdpdGggVURQIHdlIGdldCBUSVBD
IHRyYWZmaWMgYmV0d2VlbiBub2RlcyBvZiAKPj4gZGlmZmVyZW50IGNhYmluZXRzKQo+PiDCoCBU
aGV5IGhhdmUgYWxsIHJ1biB0aGUgc2FtZSBzY3JpcHQuIFNvbWV0aW1lcyBpdCBoYXBwZW5zIHRv
IHNvbWUgYW5kIAo+PiBzb21ldGltZXMgaXQgaGFwcGVucyB0byBvdGhlcnMgZG9pbmcgZXhhY3Rs
eSB0aGUgc2FtZS4gSW4gdGhpcyBjYXNlIAo+PiBwcm9jcyBhbmQgc3NhZihwaWNzIGF0dGFjaGVk
KSBhcmUgaW4gZGlmZmVyZW50IFZMQU5zLiBXaGVuIHRoZXkgYXJlIAo+PiBpbiB0aGUgc2FtZSBW
TEFOLCB0aGV5IGFsd2F5cyB3b3JrIGNvcnJlY3RseS4KPj4KPiBJIG5vdGljZSB0aGF0IHlvdSBh
cmUgc2V0dGluZyBib3RoICd0aXBjIG5vZGUgc2V0IGFkZHJlc3MnIGFuZCAndGlwYyAKPiBub2Rl
IHNldCBpZGVudGl0eScuwqAgWW91IG9ubHkgc2V0IG9uZSBvciB0aGUgb3RoZXIsIG5ldmVyIGJv
dGgsIHNpbmNlIAo+IHNldHRpbmcgYW4gYWRkcmVzcyB3aWxsIGNyZWF0ZSBhbiBpZGVudGl0eSBh
bmQgdmljZSB2ZXJzYS4KPiBUaGlzIHNob3VsZCBub3QgcmVhbGx5IGNhdXNlIGFueSB0cm91Ymxl
LCAtdGhlIHZhbHVlIHlvdSBzZXQgZmlyc3QgCj4gd2lsbCBjYXVzZSB0aGF0IHRoZSBzZWNvbmQg
b25lIHdpbGwgYmUgaWdub3JlZC4KPiBJIHdpbGwgc3RpbGwgcmVjb21tZW5kIHRoYXQgeW91IHJl
bW92ZSBvbmUgb2YgdGhvc2UgYW5kIHRyeSBhZ2FpbiwgCj4gYmVmb3JlIEkgc3BlbmQgYW5kIG1v
cmUgdGltZSBvbiB0aGlzLgo+Cj4gQ2hlZXJzCj4gLy8vam9uCgpIaSBhZ2FpbiwKVGhlcmUgaXMg
YSBjb21taXQgdXBzdHJlYW0sIGNvbW1pdCAKYzI0NGMwOTJmMWVkMmFjZmI1YWYzZDNkYTgxZTIy
MzY3ZDNkZDczMyAoInRpcGM6IGZpeCB1bmV4cGVjdGVkIGxpbmsgCnJlc2V0IGR1ZSB0byBkaXNj
b3ZlcnkgbWVzc2FnZXMiKSB0aGF0IGlzIGZpeGluZyBhbiBpc3N1ZSB3aXRoIGxpbmsgCmRpY292
ZXJ5IHRoYXQgc2VlbXMgcmVsYXRlZC4KSXQgaGFzIG5vdCB5ZXQgYmVlbiBiYWNrcG9ydGVkIHRv
IHJoZWwtOC40LCBidXQgaXQgY2FuIGJlIGNoZXJyeS1waWNrZWQgCmNsZWFubHkgaWYgeW91IHdh
bnQgdG8gdHJ5LgpJdCBhbGwgZGVwZW5kcyBvbiB3aGV0aGVyIHlvdSBidWlsZCBvd24ga2VybmVs
cywgb2YgY291cnNlLi4uCgpSZWdhcmRzCi8vL2pvbgoKCj4KPj4KPj4gSSBkb24ndCBrbm93IGlm
IGl0J3MgYSBuZXR3b3JrIG9yIHNvZnR3YXJlIHByb2JsZW0gYXMgY29tbXVuaWNhdGlvbnMgCj4+
IGFyZSB3b3JraW5nIGZpbmUuCj4+IFJIRUwgdmVyc2lvbjogUmVkIEhhdCBFbnRlcnByaXNlIExp
bnV4IHJlbGVhc2UgOC40IChPb3RwYSkKPj4gS2VybmVsIHZlcnNpb246IDQuMTguMC0zMDUuZWw4
Lng4Nl82NAo+PiBUSVBDIHZlcnNpb246IEJ1aWx0LWluIGtlcm5lbCBtb2R1bGUKPj4KPj4KPj4g
wqDCoMKgIMKgwqBUaGFuayB5b3UgIS1OYWdlbmRyYQo+PiDCoMKgIF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IHRpcGMtZGlzY3Vzc2lvbiBtYWlsaW5n
IGxpc3QKPj4gdGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldAo+PiBodHRwczov
L2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24KPj4g
wqDCoCBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiB0
aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cj4+IHRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQKPj4gaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vdGlwYy1kaXNjdXNzaW9uCj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Np
b25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
