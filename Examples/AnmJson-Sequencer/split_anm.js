/************************************************
/* SUNAG ENTERTAINMENT 2014
/* @author Jean Carlo Deconto
/* @description Split animation sequence from JSON file
/************************************************/

// Usage:
/*
{ "split" : [
	{ "name" : "anm1", "start" :  0 , "end" : 35, "repeat" : true, "intrpl" : true },
	{ "name" : "anm2", "start" : 35 , "end" : 65, "repeat" : true, "intrpl" : true },
	{ "name" : "anm3", "start" : 50 , "end" : 100, "repeat" : true, "intrpl" : true }	
] }
*/

import sunag.sea3d.studio.Api;
import sunag.sea3d.studio.Asset;
import sunag.sea3d.studio.Utils;
import flash.events.Event;
import sunag.sea3d.studio.ContentSprite;
import sunag.sea3d.studio.UI;

var win = UI.createWindow("ANM-JSON Sequencer");
win.width = 180;
win.height = 70;
win.enabledResize = false;
win.content = new ContentSprite();

// BUTTON

var btn = new UI.Button("Open JSON");
win.content.addChild( btn );

btn.x = btn.y = 10;
btn.width = 150;
btn.addEventListener(Event.COMPLETE, function(e:Event):void
{
	if ( !Utils.isClass( this, Asset.AnimationBase ) )
	{
		Api.alert("Select an animation.");
		return;
	}
	
	var open = new UI.OpenFile();
	open.addFilter( "TEXT (*.txt)", "*.txt;" );
	open.addFilter( "JSON (*.json)", "*.json;" );
	open.addEventListener(Event.COMPLETE, function(e:Event):void
	{
		if (open.data)
		{
			var json:String = open.data.toString().replace(/(\n|\r\n|\t)/g, ' ');			
			var seqs:Array = JSON.parse( json ).split;
			var sequences:Array = [];
			
			for(var i:int = 0; i < seqs.length; i++)
			{
				var seq = seqs[i];
				var count = seq.end - seq.start;				
				var anmSeq = new Asset.AnimationSequence( seq.name, seq.start, count, seq.repeat, seq.intrpl );
				
				sequences[i] = anmSeq;
			}
			
			this.sequences.fromArray( sequences );
		}				
	});
	open.browse();
});

// RESIZE EVENT

win.content.onResize = function()
{
}

win.open();