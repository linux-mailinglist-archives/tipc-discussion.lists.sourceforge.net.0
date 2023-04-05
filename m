Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FBA6D7145
	for <lists+tipc-discussion@lfdr.de>; Wed,  5 Apr 2023 02:31:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1pjr3D-0006DC-5N;
	Wed, 05 Apr 2023 00:31:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jmaloy@redhat.com>) id 1pjr39-0006D5-T8
 for tipc-discussion@lists.sourceforge.net;
 Wed, 05 Apr 2023 00:30:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w3WkHilYLiTUzmqIuU0sGPmt6udg6Kjx/AXBd+R1WBc=; b=K8kJ0SkMXqeLH99jUZSj2D6tpU
 9KgpZnQVlDm8juGH0l+xnktXcSeXZsm0jdProMwvFS0R14qcWSnJq4KEvBP5dl3asPNvcaYOxXY23
 hOsGYgojMzzc5cHTSghlG/8AWotk7I6IuiJE7F0FBPkBQd2QDxLQmOpNtHvHBWki3O5w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w3WkHilYLiTUzmqIuU0sGPmt6udg6Kjx/AXBd+R1WBc=; b=HQxTGL3DZ62xbtLF0W5ZJxLLss
 hza4lJhv+PIJHMODNP5VCkd/eYyN/JsPDVM9wHWwFIpZPWJQk8s95lSiCi2cSofWR7gL+CjS56OuR
 qRVWOpvFN5+Rr+DPWLENxNPQRa126aNLJNGTv/DkVxjva/amSoZ5c+LDUVdnNi/QxL/A=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pjr35-0005Cy-WB for tipc-discussion@lists.sourceforge.net;
 Wed, 05 Apr 2023 00:30:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680654645;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=w3WkHilYLiTUzmqIuU0sGPmt6udg6Kjx/AXBd+R1WBc=;
 b=SsYSPDW1xevVHSPTABIP0snWuQElrObWQlbp/F1FBI92WcZUNNcxQRFe3vzwgno58ke7Es
 3mVtlQgc4QFqiwsOVLn5H9m++5wpP9Bf6KmmSwQeWL/NGz5kh5Cplcw0x1zgT9dfBDwQgL
 VLbOcNf2B0gGxIbW5FzkMH1S4G50ivA=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-212-5ie2LQ0KMLeYFF63jdMzOw-1; Tue, 04 Apr 2023 20:30:42 -0400
X-MC-Unique: 5ie2LQ0KMLeYFF63jdMzOw-1
Received: by mail-qv1-f70.google.com with SMTP id
 a10-20020a0ccdca000000b005d70160fbb0so15402329qvn.21
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 04 Apr 2023 17:30:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680654641;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=w3WkHilYLiTUzmqIuU0sGPmt6udg6Kjx/AXBd+R1WBc=;
 b=aRloMyKB04/8aL/yfsQazuvky1geuGEwW+n3FxYgw+kkh6r35kiKuLW6OSE12wzIIJ
 Dr99PQ+0L/7KIba91TKh2Ft82yDoH+gomlWFJ5zKoORxuIBUs6P1hQj9xZJFPNaG2ASj
 BtsoXrHBXNcw0QoFPXSADvjqzI1FtwHiwiR6OJ4Vo3sasBMRtC2dpiUyxqBe3/XnKvy0
 xY3tUlhtvCtrXyJP9ECArzq16SNmN5tkvbbTHIW0RnMKiVtLINuYiBxg7yyGQRnGCViz
 7W0wqNuRj7wptDLCxVH/Q/DOa+j9tbuyAXnGjmLubdzfrg08aDIjGTRhctko3jIdQqde
 1YJQ==
X-Gm-Message-State: AAQBX9f8QfAyJK58qKxSsgdjd+p+5xQGiwz0k4xcaM5DM1RoNj8HnH5X
 BMklKnpdtetcPbhkEl8+ay0y7v8UDWys5GdNMnWDDkLPpgBIA6CRJ/Rez0SQqro9msQQJVUAjT+
 fNP9nKHxESP/mX2GbWA+rR2unfG9tvlhi2c75CCdaqlZM0Hs41RGK1tk6mTn2sIbr9f04KMQLXe
 500E81a60nf4sdbskfcQ==
X-Received: by 2002:a05:622a:1181:b0:3e6:4e79:7401 with SMTP id
 m1-20020a05622a118100b003e64e797401mr2366991qtk.29.1680654641763; 
 Tue, 04 Apr 2023 17:30:41 -0700 (PDT)
X-Google-Smtp-Source: AKy350ah+YABTLNebXjTF2c1Mrnx2GsSeYSs3IkoTYJg8xOiQVDZumwJSmM5/KA+ZlLk1Vmc0gGM/g==
X-Received: by 2002:a05:622a:1181:b0:3e6:4e79:7401 with SMTP id
 m1-20020a05622a118100b003e64e797401mr2366954qtk.29.1680654641387; 
 Tue, 04 Apr 2023 17:30:41 -0700 (PDT)
Received: from [10.0.0.97] ([24.225.241.171]) by smtp.gmail.com with ESMTPSA id
 de27-20020a05620a371b00b007486d9fa1d7sm3967086qkb.95.2023.04.04.17.30.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 04 Apr 2023 17:30:41 -0700 (PDT)
Message-ID: <a79f7f43-a9d1-0a80-1647-0e9139c7b9f5@redhat.com>
Date: Tue, 4 Apr 2023 20:30:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: tipc-discussion@lists.sourceforge.net, nagen_kr@yahoo.co.in,
 Xin Long <lxin@redhat.com>, tung quang nguyen
 <tung.q.nguyen@dektech.com.au>, Ying Xue <ying.xue@windriver.com>
References: <1377167456.519331.1678429199618.ref@mail.yahoo.com>
 <1377167456.519331.1678429199618@mail.yahoo.com>
 <972059401.678694.1678726696686@mail.yahoo.com>
 <346208247.784366.1678982592020@mail.yahoo.com>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <346208247.784366.1678982592020@mail.yahoo.com>
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
 Content preview:  On 2023-03-16 12:03,
 Nagendra Kumar via tipc-discussion wrote:
 > Hi Jon/Tuong/Tung/Hoang/Thang,Is there any thoughts on the below email
 trails?? > Thanks-Nagendra > On Monday, 13 March, 2023 at 10:59: [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.133.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pjr35-0005Cy-WB
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

CgpPbiAyMDIzLTAzLTE2IDEyOjAzLCBOYWdlbmRyYSBLdW1hciB2aWEgdGlwYy1kaXNjdXNzaW9u
IHdyb3RlOgo+ICAgSGkgSm9uL1R1b25nL1R1bmcvSG9hbmcvVGhhbmcsSXMgdGhlcmUgYW55IHRo
b3VnaHRzIG9uIHRoZSBiZWxvdyBlbWFpbCB0cmFpbHM/Pwo+IFRoYW5rcy1OYWdlbmRyYQo+ICAg
ICAgT24gTW9uZGF5LCAxMyBNYXJjaCwgMjAyMyBhdCAxMDo1OTo0NSBwbSBJU1QsIE5hZ2VuZHJh
IEt1bWFyIHZpYSB0aXBjLWRpc2N1c3Npb24gPHRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQ+IHdyb3RlOgo+ICAgCj4gICAgU2VuZGluZyBpdCBhZ2Fpbi4uLi4uCj4gIMKgIMKg
IE9uIEZyaWRheSwgMTAgTWFyY2gsIDIwMjMgYXQgMTE6NDk6NTkgYW0gSVNULCBOYWdlbmRyYSBL
dW1hciA8bmFnZW5fa3JAeWFob28uY28uaW4+IHdyb3RlOgo+ICAgCj4gICBIaSxXZSBhcmUgdHJ5
aW5nIHRvIHVzZSBUSVBDIG9uIFJIRUw4LjQgdG8gbWFudWFsbHkgY29tbXVuaWNhdGUgT3BlblNB
RiBub2RlcywgdXNpbmcgVElQQyBpbnN0ZWFkIG9mIFRDUC4KPiBPcGVuU0FGIGlzIGRlc2lnbmVk
IHRvIHdvcmsgd2l0aCBUSVBDIGJ1dCBvbmx5IGFzIEwyIGFuZCwgaW4gdGhpcyBjYXNlLCB3ZSBu
ZWVkIElQIHJvdXRpbmcuIFRoYXQncyB3aHkgd2UgYXJlIGNvbmZpZ3VyaW5nIGl0IG1hbnVhbGx5
Lgo+IEkgYW0gdXNpbmcgdGhlIGZvbGxvd2luZyBzY3JpcHQgdG8gc3RhcnQgYW5kIGNvbmZpZ3Vy
ZSBUSVBDOiMhL2Jpbi9iYXNoCj4gU0xPVF9JRD0kKGNhdCAiL2V0Yy9vcGVuc2FmL3Nsb3RfaWQi
KURFVj1lbm8xCj4gbW9kcHJvYmUgdGlwYwoKPiB0aXBjIG5vZGUgc2V0IG5ldGlkIDExMTF0aXBj
IG5vZGUgc2V0IGFkZHJlc3MgMS4xLiRTTE9UX0lEdGlwYyBub2RlIHNldCBpZGVudGl0eSAkKGhv
c3RuYW1lKXRpcGMgYmVhcmVyIGVuYWJsZSBtZWRpYSB1ZHAgZGV2aWNlICRERVYgbmFtZSAkKGhv
c3RuYW1lKXRpcGMgbWVkaWEgc2V0IG10dSA5MDAwIG1lZGlhIHVkcAo+IChDb25maWd1cmluZyBU
SVBDIHdpdGggVURQIHdlIGdldCBUSVBDIHRyYWZmaWMgYmV0d2VlbiBub2RlcyBvZiBkaWZmZXJl
bnQgY2FiaW5ldHMpCj4gICBUaGV5IGhhdmUgYWxsIHJ1biB0aGUgc2FtZSBzY3JpcHQuIFNvbWV0
aW1lcyBpdCBoYXBwZW5zIHRvIHNvbWUgYW5kIHNvbWV0aW1lcyBpdCBoYXBwZW5zIHRvIG90aGVy
cyBkb2luZyBleGFjdGx5IHRoZSBzYW1lLiBJbiB0aGlzIGNhc2UgcHJvY3MgYW5kIHNzYWYocGlj
cyBhdHRhY2hlZCkgYXJlIGluIGRpZmZlcmVudCBWTEFOcy4gV2hlbiB0aGV5IGFyZSBpbiB0aGUg
c2FtZSBWTEFOLCB0aGV5IGFsd2F5cyB3b3JrIGNvcnJlY3RseS4KPgpJIG5vdGljZSB0aGF0IHlv
dSBhcmUgc2V0dGluZyBib3RoICd0aXBjIG5vZGUgc2V0IGFkZHJlc3MnIGFuZCAndGlwYyAKbm9k
ZSBzZXQgaWRlbnRpdHknLsKgIFlvdSBvbmx5IHNldCBvbmUgb3IgdGhlIG90aGVyLCBuZXZlciBi
b3RoLCBzaW5jZSAKc2V0dGluZyBhbiBhZGRyZXNzIHdpbGwgY3JlYXRlIGFuIGlkZW50aXR5IGFu
ZCB2aWNlIHZlcnNhLgpUaGlzIHNob3VsZCBub3QgcmVhbGx5IGNhdXNlIGFueSB0cm91YmxlLCAt
dGhlIHZhbHVlIHlvdSBzZXQgZmlyc3Qgd2lsbCAKY2F1c2UgdGhhdCB0aGUgc2Vjb25kIG9uZSB3
aWxsIGJlIGlnbm9yZWQuCkkgd2lsbCBzdGlsbCByZWNvbW1lbmQgdGhhdCB5b3UgcmVtb3ZlIG9u
ZSBvZiB0aG9zZSBhbmQgdHJ5IGFnYWluLCAKYmVmb3JlIEkgc3BlbmQgYW5kIG1vcmUgdGltZSBv
biB0aGlzLgoKQ2hlZXJzCi8vL2pvbgoKPgo+IEkgZG9uJ3Qga25vdyBpZiBpdCdzIGEgbmV0d29y
ayBvciBzb2Z0d2FyZSBwcm9ibGVtIGFzIGNvbW11bmljYXRpb25zIGFyZSB3b3JraW5nIGZpbmUu
Cj4gUkhFTCB2ZXJzaW9uOiBSZWQgSGF0IEVudGVycHJpc2UgTGludXggcmVsZWFzZSA4LjQgKE9v
dHBhKQo+IEtlcm5lbCB2ZXJzaW9uOiA0LjE4LjAtMzA1LmVsOC54ODZfNjQKPiBUSVBDIHZlcnNp
b246IEJ1aWx0LWluIGtlcm5lbCBtb2R1bGUKPgo+Cj4gICAgIAo+ICDCoFRoYW5rIHlvdSAhLU5h
Z2VuZHJhCj4gICAgCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiB0aXBjLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Cj4gdGlwYy1kaXNjdXNzaW9uQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldAo+IGh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo+ICAgIAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAo+
IHRpcGMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKPiBodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby90aXBjLWRpc2N1c3Npb24KCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1h
aWxpbmcgbGlzdAp0aXBjLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
